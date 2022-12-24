%include 'in_out.asm'
SECTION .data
file db 'name.txt',0h
msg1 db 'Как вас зовут?',0h
msg2 db 'Меня зовут?',0h

SECTION .bss
con resb 2550

SECTION .text
global _start
_start:

mov eax,msg1
call sprintLF

mov ecx,con
mov edx,2550
call sread

mov ecx,077o
mov ebx,file
mov eax,8
int 80h

mov esi,eax 
mov eax,msg2
call slen 

mov edx,eax
mov ecx,msg2
mov ebx,esi
mov eax,4
int 80h

mov eax, con
call slen

mov edx,eax
mov ecx,con
mov ebx,esi
mov eax,4
int 80h

mov ebx,esi
mov eax,6
int 80h
call quit