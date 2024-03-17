# Inserire qui la soluzione
.globl min

min:
    movl	4(%esp), %edx
    movl	8(%esp), %ecx
    movl	12(%esp), %eax

    cmpl	%ecx, %edx
    jge		E
    cmpl	%eax, %edx
    jge		R
    movl	%edx, %eax
    jmp     R
    
E:  cmpl	%eax, %ecx
    jge		R
    movl	%ecx, %eax
    jmp     R

R:  ret;

    
    
    
    