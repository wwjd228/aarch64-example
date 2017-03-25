	.arch	armv8-a
	.text

	.equ	locked, 1
	.equ	unlocked, 0

	.global	lock_mutex
	.type	lock_mutex, function
lock_mutex:
	sub	sp, sp, #24
	str	x30, [sp, #16]
	str	x0, [sp, #0]
	str	w1, [sp, #8]
	str	w2, [sp, #12]
	ldr	w1, =locked
again:
	ldxr	w2, [x0]
	cbnz	w2, again
	stxr	w2, w1, [x0]
	cbnz	w2, again
	ldr	w2, [sp, #12]
	ldr	w1, [sp, #8]
	ldr	x0, [sp, #0]
	ldr	x30, [sp, #16]
	add	sp, sp, #24
	ret
	.size	lock_mutex, .-lock_mutex

	.global unlock_mutex
	.type unlock_mutex, function
unlock_mutex:
	sub	sp, sp, #24
	str	x30, [sp, #16]
	str	x0, [sp, #0]
	str	w1, [sp, #8]
	str	w2, [sp, #12]
	ldr	w1, =unlocked
	str	w1, [x0]
	ldr	w2, [sp, #12]
	ldr	w1, [sp, #8]
	ldr	x0, [sp, #0]
	ldr	x30, [sp, #16]
	add	sp, sp, #24
	ret
	.size	unlock_mutex, .-unlock_mutex
	.end
