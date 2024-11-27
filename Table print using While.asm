include irvine32.inc
.data 
    msg1 byte "Enter Number for Table: ", 0
    msg2 byte " * ", 0
    msg3 byte " = ", 0

    var1 dword ?    ; Variable to store user input
.code

main proc
	
	mov edx,offset msg1
	call writestring
	call readint 
	call crlf
	mov var1,eax

	mov ebx,1
	.while ebx<11
	mov eax,var1
	call writedec

	mov edx,offset msg2
	call writestring

	mov eax,ebx
	call writedec 

	mov edx,offset msg3
	call writestring

	mul var1
	call writedec
	call crlf 

	inc ebx
	.endw

exit
main endp
end main
