	.arch armv8-a
	.text
	.global fact
	.type fact, function

fact:
	sub	sp, sp, #24
	str	x30, [sp, #16]
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	mov	x1, x0
	cmp	x0, #1
	b.gt	L1
	ldr	x1, [sp, #8]
	ldr	x0, [sp, #0]
	ldr	x30, [sp, #16]
	add	sp, sp, #24
	ret

L1:
	sub	x0, x0, #1
	bl	fact
	mul	x0, x0, x1
	ldr	x1, [sp, #8]
	ldr	x30, [sp, #16]
	add	sp, sp, #24
	ret

	.size fact, .-fact
	.end
