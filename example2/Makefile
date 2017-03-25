CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example2.o
assembly = example2.s

default: example2

.PHONY: default clean clobber

example2: $(objects)
	$(CC) -o $@ $^

example2.o: example1.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example2 $(assembly)

qemu: example2
	@sh cmd
