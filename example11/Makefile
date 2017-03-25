CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example11.o
assembly = example11.s

default: example11

.PHONY: default clean clobber

example11: $(objects)
	$(CC) -o $@ $^

example11.o: example11.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example11 $(assembly)

qemu: example11
	@sh cmd
