# scrivere la soluzione qui...
.global f

f:  
    movl $2, %eax
    addl $3, %eax

    movl $4, %edx
    subl $2, %edx

    imull %edx, %eax

    movl $2, %edx
    addl $3, %edx

    subl %edx, %eax

    imull $3, %eax

    incl %eax

    ret
