CROSS_COMPILE	?= arm-linux-gnueabihf-
ARCH		?= arm
KERNEL_DIR	?= /usr/src/linux

CC		:= gcc
INCLUDE	:=  -I./jpeg/include
LIB := -L./jpeg/lib
CFLAGS		:= -Wall $(INCLUDE) $(LIB)

all: uvc-gadget
uvc-gadget: main.c uvc.h
	$(CC) $(CFLAGS) $< -o $@ -ljpeg
clean:
	rm -f *.o
	rm -f uvc-gadget
