package _map

import (
	"sync"
	"sync/atomic"
	"unsafe"
)

type Map struct {
	mu sync.Mutex

	// 存储一个readOnly类型的值
	read atomic.Value

	// dirty包含需要修改的地图内容部分
	dirty map[interface{}]*entry

	// misses统计自上次更新读取映射以来的加载数
	misses int
}

// map中与特定键对应的一个槽
type entry struct {
	// 如果p==nil，则该entry已被删除
	// 如果p==expunged，则该entry已被删除
	p unsafe.Pointer // *interface{}
}

// readOnly read atomic.Value 存储的值
type readOnly struct {
	m map[interface{}]*entry
	// amended 代表是否已经追加
	// 为true代表dirty map已经包含了一些m中不存在的key
	amended bool
}

// Store 设置键值对
func (m *Map) Store(key, value interface{}) {
	read, _ := m.read.Load().(readOnly)
	// 1.先判断key是否在read中存在，如果存在则直接尝试store
	if e, ok := read.m[key]; ok && e.tryStore(&value) {
		return
	}
	// 2.走到此处代表key对应的dirty已经被删除或者在read找不到，需要走追加流程
	m.mu.Lock()
	read, _ = m.read.Load().(readOnly)
	if e, ok := read.m[key]; ok {
		// 走到这里代表key在m中存在，但是entry被标记删除
		// 将entry标记为取消删除
		if e.unexpungeLocked() {
			// 存储在dirty
			m.dirty[key] = e
		}
		e.storeLocked(&value)
	} else if e, ok := m.dirty[key]; ok {
		// 走到这里代表key在dirty中存在
		e.storeLocked(&value)
	} else {
		// 这个时候已经是需要追加了
		if !read.amended { // 当amended为false
			//
			m.dirtyLocked()
			// 设置amended为true
			m.read.Store(readOnly{m: read.m, amended: true})
		}
		m.dirty[key] = newEntry(value)
	}
	m.mu.Unlock()
}

// expunged 删除标记
var expunged = unsafe.Pointer(new(interface{}))

// unexpungeLocked 标记为取消删除
func (e *entry) unexpungeLocked() (wasExpunged bool) {
	return atomic.CompareAndSwapPointer(&e.p, expunged, nil)
}

// storeLocked 设置entry的值
func (e *entry) storeLocked(i *interface{}) {
	atomic.StorePointer(&e.p, unsafe.Pointer(i))
}

// tryStore 尝试保存entry
func (e *entry) tryStore(i *interface{}) bool {
	for {
		p := atomic.LoadPointer(&e.p)
		// 如果entry==expunged，代表此entry已经被删除，则返回false
		if p == expunged {
			return false
		}
		// 如果entry没有被删除，则通过CAS的方式存储值
		if atomic.CompareAndSwapPointer(&e.p, p, unsafe.Pointer(i)) {
			return true
		}
	}
}

// dirtyLocked
func (m *Map) dirtyLocked() {
	if m.dirty != nil {
		return
	}
	read, _ := m.read.Load().(readOnly)
	// 创建dirty
	m.dirty = make(map[interface{}]*entry, len(read.m))
	for k, e := range read.m {
		if !e.tryExpungeLocked() {
			m.dirty[k] = e
		}
	}
}

// tryExpungeLocked 尝试标记为删除
func (e *entry) tryExpungeLocked() (isExpunged bool) {
	p := atomic.LoadPointer(&e.p)
	for p == nil {
		if atomic.CompareAndSwapPointer(&e.p, nil, expunged) {
			return true
		}
		p = atomic.LoadPointer(&e.p)
	}
	return p == expunged
}

func newEntry(i interface{}) *entry {
	return &entry{p: unsafe.Pointer(&i)}
}

// Load 根据key获取一个value
func (m *Map) Load(key interface{}) (value interface{}, ok bool) {
	read, _ := m.read.Load().(readOnly)
	e, ok := read.m[key]
	// 1.先判断key是否在read中不存在 && 已经追加
	if !ok && read.amended {
		m.mu.Lock()
		// Avoid reporting a spurious miss if m.dirty got promoted while we were
		// blocked on m.mu. (If further loads of the same key will not miss, it's
		// not worth copying the dirty map for this key.)
		read, _ = m.read.Load().(readOnly)
		e, ok = read.m[key]
		if !ok && read.amended {
			e, ok = m.dirty[key]
			// Regardless of whether the entry was present, record a miss: this key
			// will take the slow path until the dirty map is promoted to the read
			// map.
			m.missLocked()
		}
		m.mu.Unlock()
	}
	if !ok {
		return nil, false
	}
	return e.load()
}

func (e *entry) load() (value interface{}, ok bool) {
	p := atomic.LoadPointer(&e.p)
	if p == nil || p == expunged {
		return nil, false
	}
	return *(*interface{})(p), true
}

func (m *Map) missLocked() {
	m.misses++
	if m.misses < len(m.dirty) {
		return
	}
	m.read.Store(readOnly{m: m.dirty})
	m.dirty = nil
	m.misses = 0
}
