package _chan

import (
	"fmt"
	"testing"
	"time"
)

func TestOrderPrintV2(t *testing.T) {
	var ps = make([]*printWork, 3)
	var chans = make([]chan struct{}, 3)
	for i := 0; i < len(chans); i++ {
		chans[i] = make(chan struct{}, 1)
		ps[i] = &printWork{
			printVal: i + 1,
		}
	}
	for i := 0; i < 3; i++ {
		ps[i].readChan = chans[i]
		if i == len(chans)-1 {
			ps[i].nextChan = chans[0]
		} else {
			ps[i].nextChan = chans[i+1]
		}
		go func(p *printWork) {
			for {
				<-p.readChan
				time.Sleep(time.Second)
				fmt.Println(p.printVal)
				p.nextChan <- struct{}{}
			}
		}(ps[i])
	}
	chans[0] <- struct{}{}
	time.Sleep(time.Hour)
}

type printWork struct {
	printVal int
	readChan chan struct{}
	nextChan chan struct{}
}
