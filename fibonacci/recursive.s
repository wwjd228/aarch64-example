	.arch	armv8-a
	.text
	.global	fib
	.type fib, function

fib:
	sub	sp, sp, #32
	str	x30, [sp, #24]
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	cmp	x0, #1
	b.gt	L1
	ldr	x1, [sp, #8]
	ldr	x0, [sp, #0]
	ldr	x30, [sp, #24]
	add	sp, sp, #32
	ret

L1:
	sub	x0, x0, #1
	bl	fib
	str	x0, [sp, #16]
	ldr	x0, [sp, #0]
	sub	x0, x0, #2
	bl	fib
	ldr	x1, [sp, #16]
	add	x0, x0, x1
	ldr	x1, [sp, #8]
	ldr	x30, [sp, #24]
	add	sp, sp, #32
	ret

	.size	fib, .-fib
	.end

