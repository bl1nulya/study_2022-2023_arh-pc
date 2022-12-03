%include 'in_out.asm'

section .data
otv: db 'Наименьшее число:',0h
A dd '94'
B dd '5'
C dd '58'

section .bss
min resb 10

section .text
global _start
_start:

mov ecx,[A]
mov [min],ecx

cmp ecx,[B]
jl check_C
mov ecx,[B]
mov [min],ecx

check_C:
mov eax,min
call atoi
mov [min],eax

mov ecx,[min]
cmp ecx,[C]
jl fin
mov ecx,[C]
mov [min],ecx

fin:
mov eax,otv
call sprint
mov eax,[min]
call iprintLF

call quit
