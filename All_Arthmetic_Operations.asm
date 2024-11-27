include irvine32.inc
.data
	msg1 byte "Enter 1st Number: ",0
	msg2 byte "Enter 2nd Number: ",0
	msg3 byte "Enter Your choice: ",0
	msg4 byte "Answer is= ",0
	msg5 byte "1st Number should be Greater.",0
	msg6 byte "Remainder is=",0


.code
main proc
	mov edx,offset msg1			;for 1st Number
	call writestring
	call readint
	mov ebx,eax
	call crlf

	mov edx,offset msg2			;for 2nd Number
	call writestring
	call readint
	mov ecx,eax
	call crlf

	mov edx,offset msg3			;for choice
	call writestring
	call readchar
	call crlf

	.if(al=='+')		;check for addition
		add ebx,ecx
		mov eax,ebx
		mov edx,offset msg4
		call writestring
		call writedec
		call crlf
	.elseif(al=='-')		;check for subtraction
		sub ebx,ecx
		mov eax,ebx
		mov edx,offset msg4
		call writestring
		call writedec
		call crlf
	.elseif(al=='*')		;check for multiplication
		imul ebx,ecx
		mov eax,ebx
		mov edx,offset msg4
		call writestring
		call writedec
		call crlf
	.elseif(al=='/')
		.if(ebx<ecx)   ;check 1st number must be greater
			mov edx,offset msg5
			call writestring
			call crlf
		.else
			mov edx,offset msg4  ;division perform
			call writestring
			mov edx,0
			mov eax,ebx
			div ecx
			call writedec
			call crlf

			mov eax,edx		;for remainder
			mov edx,offset msg6
			call writestring
			call writedec
			call crlf
			.endif
	.endif

exit
main endp
end main