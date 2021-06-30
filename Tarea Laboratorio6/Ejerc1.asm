        org 	100h

        section	.text
        mov cx, 5
        call 	LeerCadena
        call 	EsperarTecla

        int 	20h

        section .data

        correcta db "bienvenido$" 
        incorrecta db "incorrecto$" 
        contra db "pswrd" 

    EsperarTecla:
            mov     AH, 07h         
            int     21h
            ret
    LeerCadena:
            xor     SI, SI         
    while:  
            call    EsperarTecla   
            cmp     AL, 0x0D        
            je      verify            
            mov     [300h+SI], AL   
            inc     SI              
            jmp     while          
    verify:
        xor SI, SI 
        xor DI, DI
        jmp for

    for: 
        mov BL, [contra+DI]
        cmp BL, [300h+SI]
        jne BadPass
        INC SI
        INC DI
        loop for 
        call GoodPass
        jmp exit

    BadPass: 
        mov 	AH, 09h
        mov 	DX, incorrecta	
        int 	21h
        int 20h 

    GoodPass:  
        mov 	AH, 09h
        mov 	DX, correcta
        int 	21h
        ret


    exit:
        int 20h