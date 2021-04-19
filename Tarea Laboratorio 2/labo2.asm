;Escribir cuatro iniciales de su nombre completo empezando en la dirección de memoria 200h (25%):
;En 200h el carácter A
;En 201h el carácter E
;En 202h el carácter R
;En 203h el carácter V
; Mi nombre es Alejandro Enrique Rivera Vaquez 00011218
    org 	100h

	section	.text

	mov byte [200h],"A"
	mov byte [201h],"E"
	mov byte [202h],"R"
	mov byte [203h],"V"

;Luego, mover a los siguientes registros los códigos ASCII de los caracteres guardados en 200h (75%):
;Copiar el valor de 200h a AX usando direccionamiento directo.

	mov AL, [200h]
;Copiar el valor de 201h a CX usando direccionamiento indirecto por registro.

	mov BX, 201h

	mov CX,[BX]
;Copiar el valor de 202h a DX usando direccionamiento indirecto base más índice.

	mov SI, 1h

	mov Dl, [BX +SI]
;Copiar el valor de 203h a DI usando direccionamiento relativo por registro.

	mov DI, [BX +2h]
	int	20h
