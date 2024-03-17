.globl f

f:
	movl	4(%esp), %edx
	addl	8(%esp), %edx

	cmpl $15, %edx
	jg E
	movl $0, %eax
	ret
	
E: 	movl $1, %eax
	ret
