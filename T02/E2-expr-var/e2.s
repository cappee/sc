# scrivere la soluzione qui...
.global f

f:  movl 4(%esp), %eax
    imull $2, %eax
    imull 4(%esp), %eax

    movl 4(%esp), %edx
    imull $7, %edx

    subl %edx, %eax

    incl %eax

    ret
    