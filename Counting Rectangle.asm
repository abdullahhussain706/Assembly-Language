include irvine32.inc

.code 
main proc
	mov eax,1

	.while eax<=5
		mov ebx,1
		.while ebx<=eax
		call writedec
		inc ebx
		.endw
		call crlf
		inc eax
	.endw
	
	
	


exit
main endp
end main
		