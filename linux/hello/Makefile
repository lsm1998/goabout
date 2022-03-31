#kernel source
KERNEL_SRC=/my/linux-4.9.309

#current directory
PWD = $(shell pwd)

#kernel module
obj-m += hello.o

all:
	make -C $(KERNEL_SRC) M=$(PWD) modules
clean:
	rm -f *.ko *.o *.symvers *.cmd *.cmd.o *.mod.* *.order

