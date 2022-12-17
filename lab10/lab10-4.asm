%include 'in_out.asm'

SECTION .data
    msg1 db " Функция: f(x)=10x-5 ", 0
    msg2 db "Результат: ", 0 
    
SECTION .text 
global _start
_start:
    mov eax,msg1
    call sprintLF
    
    pop ecx
    pop edx
    sub ecx,1
    mov esi,0
next:
    cmp ecx,0h
    jz _end
    pop eax
    call atoi
    call subbb
    add esi,eax
    loop next
_end: 
    mov eax, msg2
    call sprint
    mov eax, esi 
    call iprintLF
    call quit
    
subbb:
    mov ebx, 10
    mul ebx
    add eax, -5
    ret