INCLUDE Irvine32.inc

.data



array byte 5 DUP(?)				; array of 5 elements
num byte 5						; total no of countruies = 5
dollar byte 164
getcurrency byte "enter prices for 5 different countries : ",0  ; string for currency
result byte "average of numbers are : ",0						; string for result 
 
.code


main PROC

mov edx, offset getcurrency					; moving string to edx 
call writestring							; printing currency string

mov al,0									; moving 0 to al	

call readint	; getting num 
mov array,al    ; moving num to 1st element of array

call readint	; getting num
mov array+1,al	; moving num to 2nd element of array

call readint	; getting num
mov array+2,al	; moving num to 3rd element of array

call readint	; getting num
mov array+3,al	; moving num to 4th element of array

call readint	; getting num
mov array+4,al	; moving num to 5th element of array

mov al,array    ;moving 1st element to al
add al,array+1  ;adding 1st and 2nd 
add al,array+2  ; adding 3rd to addition
add al,array+3  ; adding 4th to addition 
add al,array+4  ; adding 5th to addition
mov edx,offset result  ; moving result string to edx 
call writestring	   ; printing result string  

div num				; dividing num to addition of 5 elements and storing in eax

mul dollar			; multiplying result by 165


call writeint   ; printing result 
call readint

exit
main ENDP
END main
Result:
