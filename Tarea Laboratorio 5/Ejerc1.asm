org 100h

    section .text
    xor AX, AX
    xor SI, SI
    xor BX, BX
    XOR CX, CX
    xor DX, DX

    MOV SI, 0
    MOV DI, 0d
    
    call modotexto
    call movercursornombre
    call escribirnombre
    call movecursornombre2
    call escribirnombre2
    call movercursorapellido
    call escribirapellido
    call movercursorapellido2
    call escribirapellido2
    call esperartecla
    call exit

    modotexto: 
        MOV AH, 0h 
        MOV AL, 03h 
        INT 10h
        RET

    movercursornombre:
        MOV AH, 02h 
        MOV DH, 10 
        MOV DL, 20
        MOV BH, 0h 
        INT 10h
        RET

    escribirnombre: 
        MOV AH, 09h 
        MOV DX, nombre
        INT 21h
        RET

    movercursornombre2:
        MOV AH, 02h 
        MOV DH, 12 
        MOV DL, 20
        MOV BH, 0h 
        INT 10h
        RET

    escribirnombre2: 
        MOV AH, 09h 
        MOV DX, nombre2
        INT 21h
        RET

    movercursorapellido:
        MOV AH, 02h
        MOV DH, 14 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET

    escribirapellido: 
        MOV AH, 09h 
        MOV DX, apellido 
        INT 21h
        RET

    movercursorsapellido2:
        MOV AH, 02h 
        MOV DH, 16
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET

    escribirapellido2: 
        MOV AH, 09h ;
        MOV DX, apellido2 
        INT 21h
        RET

    esperartecla:
        MOV AH, 00h
        INT 16h

        ret
    exit:
        int 20h

section .data

nombre DB "Alejandro $"
nombre2 DB "Enrique $"
apellido DB "Rivera $"
apellido2 DB "Vasquez $"