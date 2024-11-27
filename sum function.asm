include irvine32.inc
.data
	msg1 byte "Enter 1st Number: ",0
	msg2 byte "Enter 2nd Number: ",0
	msg3 byte "Answer is: ",0

	num1 dword ?
	num2 dword ?

.code
main proc
	mov edx,offset msg1
	call writestring
	call readint
	mov num1,eax
	call crlf

	mov edx,offset msg2
	call writestring
	call readint
	mov num2,eax
	call crlf


	sum proc
		mov eax,num1
		add eax,num2
		mov edx,offset msg3
		call writestring
		call writedec
		call crlf

		ret
	sum endp

	call sum


exit
main endp
end main