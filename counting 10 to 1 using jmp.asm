include irvine32.inc
.data
.code
main proc
	mov eax,10

	l:
		call writedec
		call crlf
		dec eax

	cmp eax,0
	jne l

exit
main endp
end main