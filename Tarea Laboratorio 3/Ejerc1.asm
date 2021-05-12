    org 100h
    section .text

    xor AX, AX
    mov CX, 8d
    ; Mi carnet es 00011218

    mov     byte [200h], 0d
    mov     byte [201h], 0d
    mov     byte [202h], 0d
    mov     byte [203h], 1d
    mov     byte [204h], 1d
    mov     byte [205h], 2d
    mov     byte [206h], 1d
    mov     byte [207h], 8d

    mov BX, 400h

    jmo sumatoria
sumatoria:
    
    add     AL,[BX]
    add     BX,1h
    loop    sumatoria


    mov     CL, 8d
    div     CL

    mov     byte [20Ah], AL
    int     20h