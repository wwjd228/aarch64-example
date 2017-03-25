CC	= aarch64-linux-gnu-gcc-4.8
CFLAGS	= -O0 -ggdb -Wall -mcpu=cortex-a57 -pthread -static
LDFLAGS = -fno-stack-protector

objects	= atomic.o mutex.o

default: atomic

.PHONY: default clean clobber

atomic: $(objects)
	$(CC) $(CFLAGS) -o $@ $^

atomic.o: atomic.c
mutex.o: mutex.s

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects) atomic

qemu: atomic
	@sh cmd
