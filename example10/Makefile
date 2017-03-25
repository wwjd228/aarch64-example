CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example10.o
assembly = example10.s

default: example10

.PHONY: default clean clobber

example10: $(objects)
	$(CC) -o $@ $^

example10.o: example10.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example10 $(assembly)

qemu: example10
	@sh cmd
