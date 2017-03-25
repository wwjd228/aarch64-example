CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57
LDFLAGS = -fno-stack-protector

objects	= factorial.o fact.o

default: factorial

.PHONY: default clean clobber

factorial: $(objects)
	$(CC) -o $@ $^

fact.o: fact.s
factorial.o: factorial.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) factorial

qemu: factorial
	@sh cmd
