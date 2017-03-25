CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example7.o
assembly = example7.s

default: example7

.PHONY: default clean clobber

example7: $(objects)
	$(CC) -o $@ $^

example7.o: example7.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example7 $(assembly)

qemu: example7
	@sh cmd
