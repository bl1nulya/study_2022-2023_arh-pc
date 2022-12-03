%include 'in_out.asm'

SECTION .data
ur: DB '(2+x)^2',0
x1: DB 'Введите x:',0
otv: DB 'Ответ:',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax,ur
call sprintLF

mov eax,x1
call sprintLF

mov ecx,x
mov edx,80
call sread

mov eax,x
call atoi

xor ecx,ecx
mov ecx,2
add eax,ecx
mul eax
mov edi,eax

mov eax,otv
call sprint

mov eax,edi
call iprintLF

call quit
