package _map

import "unsafe"

/**

// A header for a Go map.
type hmap struct {
	// Note: the format of the hmap is also encoded in cmd/compile/internal/reflectdata/reflect.go.
	// Make sure this stays in sync with the compiler's definition.
	count     int // # live cells == size of map.  Must be first (used by len() builtin)
	flags     uint8
	B         uint8  // log_2 of # of buckets (can hold up to loadFactor * 2^B items)
	noverflow uint16 // approximate number of overflow buckets; see incrnoverflow for details
	hash0     uint32 // hash seed

	buckets    unsafe.Pointer // array of 2^B Buckets. may be nil if count==0.
	oldbuckets unsafe.Pointer // previous bucket array of half the size, non-nil only when growing
	nevacuate  uintptr        // progress counter for evacuation (buckets less than this have been evacuated)

	extra *mapextra // optional fields
}

*/
type hmap struct {
	// 元素个数
	count int
	// map的状态，有四个标志位，用来指示是否有协程遍历map、是否有协程正在修改map等
	//iterator     = 1 // there may be an iterator using buckets
	//oldIterator  = 2 // there may be an iterator using oldbuckets
	//hashWriting  = 4 // a goroutine is writing to the map
	//sameSizeGrow = 8 // the current map growth is to a new map of the same size
	flags uint8
	// buckets 的对数 log_2
	B uint8
	// 指向 buckets 数组，大小为 2^B
	// 如果元素个数为0，就为 nil
	buckets unsafe.Pointer
	// 扩容的时候，buckets 长度会是 oldBuckets 的两倍
	oldBuckets unsafe.Pointer
	// 指示扩容进度，小于此地址的 buckets 迁移完成
	nevacuate uintptr
}
