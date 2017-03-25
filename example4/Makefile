CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example4.o
assembly = example4.s

default: example4

.PHONY: default clean clobber

example4: $(objects)
	$(CC) -o $@ $^

example4.o: example4.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example4 $(assembly)

qemu: example4
	@sh cmd
