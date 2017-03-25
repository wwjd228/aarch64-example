CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example9.o
assembly = example9.s

default: example9

.PHONY: default clean clobber

example9: $(objects)
	$(CC) -o $@ $^

example9.o: example9.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example9 $(assembly)

qemu: example9
	@sh cmd
