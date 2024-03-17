# Inserire qui la soluzione
.globl	fib

fib:
    movl    4(%esp), %edx   #n
    movl	$0, %ecx        #fib1
    movl	$1, %eax        #fib2

    cmpl	$0, %edx
    je		R1

    cmpl	$1, %edx
    je		R
    
F:  cmpl	$1, %edx
    jbe		R

    addl	%eax, %ecx
    addl	%eax, %ecx

    subl	%ecx, %eax
    negl    %eax

    subl	%eax, %ecx
    decl    %edx
    jmp		F
     

R1: movl	$0, %eax
    jmp		R

R: ret
    
    
    
    