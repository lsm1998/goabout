package lock

import (
	"testing"
)

func TestNewReentryLock(t *testing.T) {
	lock := NewReentryLock()
	lock.Lock()
	lock.Lock()
	t.Log(lock.reentryCount)
	lock.UnLock()
	lock.UnLock()
	t.Log(lock.reentryCount)
}
