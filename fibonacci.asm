include irvine32.inc
.data
	pre dword ?
	curr dword ?
	msg byte "Input number of terms to print = ",0
	term byte "Febonaci series: ",0
.code
	main proc

	mov edx, offset msg
	call writestring
	call readint
	mov ecx, eax

	mov edx, offset term
	call writestring
	call crlf

	mov eax, 0
	call writedec
	call crlf

	mov eax, 1
	call writedec
	call crlf

	mov pre, 0
	mov curr, 1
	sub ecx, 2

	.while ecx>0
		mov eax,pre
		add eax,curr
		call writedec
		call crlf
		mov ebx,curr
		mov pre,ebx
		mov curr,eax
		dec ecx

	.endw

exit
main endp
end main
		