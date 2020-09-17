section .data
    maiuscula: db ’A’
    minuscula: db ’b’

section .bss
    lowercase: resb 1
    uppercase: resb 1

section .text
    global _start

_start:
    mov eax, maiuscula
    sub [eax], 32
    mov lowercase, eax

    mov edx, minuscula
    add [edx], 32
    mov uppercase, edx