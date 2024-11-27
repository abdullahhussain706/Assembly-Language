include irvine32.inc
.data
	msg1 byte "Enter Number for Factorial: ",0
	msg2 byte "Factorial is: ",0


.code
main proc
	mov edx,offset msg1
	call writestring
	call readint
	call crlf
	mov ebx,eax
	
	
	.while ebx != 1
		dec ebx
		imul eax, ebx
	.endw

	mov edx,offset msg2
	call writestring
	call writedec
	call crlf

exit
main endp
end main
