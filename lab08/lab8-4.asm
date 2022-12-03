%include 'in_out.asm'

section .data
x1: db 'Введите x:',0h
a1: db 'Введите a:',0h
otv: db 'Ответ:',0h

section .bss
x: resb 10
a: resb 10

section .text
global _start
_start:

mov eax,x1
call sprint

mov ecx,x
mov edx,10
call sread

mov eax,x
call atoi

mov [x],eax

mov eax,a1
call sprint

mov ecx,a
mov edx,10
call sread

mov eax,a
call atoi

mov [a],eax

mov ecx,3
cmp ecx,[x]
jne check_a
mov eax,[x]
mov ecx,3
mul ecx
mov edi,eax
jmp fin

check_a:
mov ecx,1
mov edx,[a]
add ecx,edx
mov edi,ecx

fin:

mov eax,otv
call sprint
mov eax,edi
call iprintLF

call quit
