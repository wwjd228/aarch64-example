CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example8.o
assembly = example8.s

default: example8

.PHONY: default clean clobber

example8: $(objects)
	$(CC) -o $@ $^

example8.o: example8.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example8 $(assembly)

qemu: example8
	@sh cmd
