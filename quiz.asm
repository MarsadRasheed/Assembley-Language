INCLUDE Irvine32.inc

.data

cel byte ?			; veriable storing celcious 
no10 byte 10		; veriable containing 10 value
no5 byte 5			; veriable containing 10 value
no32 byte 32		; veriable containing 32 value
no byte ?

gettemp byte "enter temperature in celcious : ",0   ; string for currency
result byte "average of numbers are : ",0						; string for result 
 
.code


main PROC

mov edx, offset gettemp					; moving string to edx 
call writestring							; printing currency string

mov al,0									; moving 0 to al	

call readint						; calling to take input
mov cel,al							; moving value to cel veriable
mov eax,0							; moving 0 to edx
mov edx,0							; moving 0 to edx
mov al,no10							; moving no10 = 10 to al	
div no5								; dividing no10 = 10 by no5 = 5 and storing in register

mul cel								; multiplying the division result with cel veriable	


mov edx,offset result				; moving result string to edx
call writestring					; printing result string
mov al,cel							; moving cel value to al 
add al,no32							; adding cel value and multiplied result

call writeint   ; printing result 
call readint

exit
main ENDP
END main
Result:
