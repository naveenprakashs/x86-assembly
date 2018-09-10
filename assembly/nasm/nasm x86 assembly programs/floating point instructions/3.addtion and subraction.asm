%include "io.inc"

section .data
f1 dd 0x00000001
f2 dd 0x00000002

section .bss
f3 resd 1
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    fld dword [f1]
    fld dword [f2]
    fadd st1
    
    fadd st1 , st0
    
    xor eax, eax
    ret