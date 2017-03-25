	.arch	armv8-a
	.text
	.global	fib
	.type	fib, function

fib:
	sub	sp, sp, #32
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	str	x3, [sp, #20]
	str	x30, [sp, #24]
	mov	x1, xzr
	mov	x2, #1
	mov	x3, xzr
	cmp	x0, #1
	b.le	EXIT1
L1:
	add	x3, x2, x1
	mov	x1, x2
	mov	x2, x3
	sub	x0, x0, #1
	cmp	x0, #1
	b.gt	L1
	mov	x0, x3
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #20]
	ldr	x30, [sp, #24]
	add	sp, sp, #32
	ret
EXIT1:
	ldr	x0, [sp, #0]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #20]
	ldr	x30, [sp, #24]
	add	sp, sp, #32
	ret

	.size	fib, .-fib
	.end
