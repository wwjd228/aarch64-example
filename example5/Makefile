CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example5.o
assembly = example5.s

default: example5

.PHONY: default clean clobber

example5: $(objects)
	$(CC) -o $@ $^

example5.o: example5.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example5 $(assembly)

qemu: example5
	@sh cmd
