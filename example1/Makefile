CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example1.o
assembly = example1.s

default: example1

.PHONY: default clean clobber

example1: $(objects)
	$(CC) -o $@ $^

example1.o: example1.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example1 $(assembly)

qemu: example1
	@sh cmd
