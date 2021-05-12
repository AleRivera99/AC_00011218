    org 100h

    section.text

    xor AX, AX
    xor CX, CX
    mov CL, 5d
    mov AL,  1d

    call factorial

    mov CH, 1d
    mul CH

    mov [20BH], AL

    jmp exit

factorial
    mul CL
    sub CL, 1d
    cmp CL, 0d
    JNZ factorial
    ret

exit:
    int 20h