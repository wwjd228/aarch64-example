CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= example6.o
assembly = example6.s

default: example6

.PHONY: default clean clobber

example6: $(objects)
	$(CC) -o $@ $^

example6.o: example6.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<
	$(CC) -S $(CFLAGS) $(LDFLAGS) -o $(assembly) $<

clean:
	rm -f $(objects) example6 $(assembly)

qemu: example6
	@sh cmd
