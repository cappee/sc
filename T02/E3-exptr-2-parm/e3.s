# scrivere la soluzione qui...
.global f

f:
	movl 	4(%esp), %eax
	addl	8(%esp), %eax

	movl	4(%esp), %edx
	subl	8(%esp), %edx
	
	imull	%edx, %eax

	ret
