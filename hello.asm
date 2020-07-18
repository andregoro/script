section .data:
    msg db 'ola',0xa
    len equ $ - msg

section .text: 
    global _start
_start:
    mov edx,len
    mov ecx,msg
    mov ebx,1
    mov eax,4
    int 0x80

    mov eax,0
    mov ebx,1
    int 0x80