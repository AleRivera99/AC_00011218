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
    call movercursorname
	call escribirname
	call movercursorapellido
	call escribirapellido
	call movercursorsegundoapellido
	call escribirsegundoapellido
    call esperartecla
    call exit

    modotexto: 
        MOV AH, 0h 
        MOV AL, 03h 
        INT 10h
        RET

    movercursorname:
        MOV AH, 02h 
        MOV DH, 10 
        MOV DL, 20
        MOV BH, 0h 
        INT 10h
        RET

    escribirname: 
        MOV AH, 09h 
        MOV DX, name 
        INT 21h
        RET

	movercursorapellido:
        MOV AH, 02h
        MOV DH, 12 
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET

    escribirapellido: 
        MOV AH, 09h 
        MOV DX, apellido 
        INT 21h
        RET


	movercursorsegundoapellido:
        MOV AH, 02h 
        MOV DH, 14
        MOV DL, 20 
        MOV BH, 0h 
        INT 10h
        RET

    escribirsegundoapellido: 
        MOV AH, 09h ;
        MOV DX, segundoapellido 
        INT 21h
        RET

    esperartecla:
        MOV AH, 00h
        INT 16h

        ret
    exit:
        int 20h

section .data

name DB "Alejandro $"
apellido DB "Rivera $"
segundoapellido DB "Vasquez $"