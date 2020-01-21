INCLUDE Irvine32.inc

.data

input byte "Enter value : ",0   ; string for input
res byte "cube is : " ,0      ; final string

a real8 ?                   ; uninitialize veriable

.code

cube proto , var:real8      ; function prototype 

main PROC


mov edx,offset input
call writestring

call readfloat   ; taking from user
fst a          ; copying to a
invoke cube , a   ; calling procedure with a parameter
mov edx,offset res
call writestring

call writefloat   ; printing value
call readfloat    ; stop console

exit
main ENDP

; function defination

cube PROC , var:real8
				
		fmul var    ; multiolying with st(0) and storing result in st(0)
		fmul var    ; multiplying with st(0) and stoing result in st(0)

		ret         ; retun call

cube ENDP

END main

Result:

