;;;;;;;;;;;;;;;;;;;;;;
;QUESTION 1 (a+b)-b
.386
.model flat, stdcall
.stack 4096

include Irvine32.inc

;-->Data segment to make variables
.data
message db "Result is: ",0
a word 100
b word 50
result word 0

;-->code segment starts from here
.code
main proc
mov ax,a
add ax,b
sub ax,b
mov result,ax

mov edx, offset message
call WriteString

movzx eax,result
call WriteDec
call DumpRegs
invoke ExitProcess,0 

main endp
end main


QUESTION 2 (m+n)-o
.386
.model flat, stdcall
.stack 4096
include Irvine32.inc

;-->Data segment to make variables
.data
message db "Result is: ",0
m word 200
n dword 10000
o word 150
result dword o

.code
main proc
movzx eax,m
add eax,n
movzx edx,o
sub eax,edx
mov result,eax

mov edx, offset message
call WriteString
call WriteDec
call DumpRegs
invoke ExitProcess,0 

main endp
end main
;;;;;;;;;;;;;;;;;;;;;;;;;;

