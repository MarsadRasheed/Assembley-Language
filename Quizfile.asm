INCLUDE Irvine32.inc


.data

array dword 80,80,80,80,80
len dword ?

.code

getAvg proto , len:dword,array:ptr dword
addTwo proto, as:byte , bs:byte
num dword 70

gradeA byte "Your grade is A",0
gradeB byte "your grade is B",0

main PROC

mov eax,0

mov ecx,lengthof array
mov len,ecx

invoke getAvg, len,addr array

cmp eax,num
ja lA
mov edx,offset gradeB
call writestring
jmp kkk

lA:
	mov edx,offset gradeA
	call writestring
	jmp kkk

call writeint
call readint

kkk:
call readint
call writeint
exit
main ENDP

addTwo Proc ,val1:byte,val2:byte
	local var:byte
			mov al,val1
			add al,val2
			mov var,al
			ret
addTwo ENDP

getAvg proc uses edx , lena:dword,arraya: ptr dword
			mov edx,0
			mov esi,arraya
			mov ecx,lena
			mov eax,0
			cmp ecx,0
			je L2
	L1:     add eax,[esi]
			add esi,4
			loop L1
	L2:		
			div lena
			
	ret

getAvg ENDP

END main

Result:
