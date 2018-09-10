%include "io.inc"

section .data
string db 'abcdefgh'
match_found db 'match found',0
match_not_found db 'match_not_found',0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    xor ecx,ecx
    mov ecx,8
    mov al , 'l'
    mov edi , string
    cld
    repne scasb     ; repeat when ZF=0
    je found
    
    not_found:
    PRINT_STRING match_not_found
    jmp quit
    found:
    PRINT_STRING match_found
    
    quit:
    nop
    