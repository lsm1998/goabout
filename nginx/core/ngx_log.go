package core

import (
	"errors"
	"fmt"
	"os"
)

var ngxLog *NgxLog

type NgxLog struct {
	logDir     string
	logLevel   int8
	errorFile  *os.File
	accessFile *os.File
}

func NgxLogInit(dir string) {
	ngxLog = &NgxLog{
		logDir: dir,
	}
	ngxLog.Init()
}

func (n *NgxLog) Init() {
	var err error
	_, err = os.Stat(n.logDir)
	if errors.Is(err, os.ErrNotExist) {
		if err = os.MkdirAll(n.logDir, os.ModePerm); err != nil {
			panic(err)
		}
	}
	n.errorFile, err = os.OpenFile(fmt.Sprintf("%s%c%s", n.logDir, os.PathSeparator, "error.log"),
		os.O_CREATE|os.O_RDWR|os.O_APPEND, os.ModePerm)
	if err != nil {
		panic(err)
	}
	n.accessFile, err = os.OpenFile(fmt.Sprintf("%s%c%s", n.logDir, os.PathSeparator, "access.log"),
		os.O_CREATE|os.O_RDWR|os.O_APPEND, os.ModePerm)
	if err != nil {
		panic(err)
	}
}

func (n *NgxLog) Error(format string, a ...interface{}) error {
	sprintf := fmt.Sprintf(format, a...)
	_, err := n.errorFile.Write([]byte(sprintf + "\r\n"))
	return err
}

func (n *NgxLog) Access(format string, a ...interface{}) error {
	sprintf := fmt.Sprintf(format, a...)
	_, err := n.accessFile.Write([]byte(sprintf + "\r\n"))
	return err
}

func Error(format string, a ...interface{}) {
	if err := ngxLog.Error(format, a...); err != nil {
		panic(err)
	}
}

func Access(format string, a ...interface{}) {
	if err := ngxLog.Access(format, a...); err != nil {
		panic(err)
	}
}
