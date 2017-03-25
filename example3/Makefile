CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example3.o
assembly = example3.s

default: example3

.PHONY: default clean clobber

example3: $(objects)
	$(CC) -o $@ $^

example3.o: example3.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example3 $(assembly)

qemu: example3
	@sh cmd
