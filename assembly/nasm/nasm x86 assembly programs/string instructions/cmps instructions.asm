%include "io.inc"

section .data
s1 db 'hello'
s2 db 'hello'

equal_s db 'equal',0
notequal_s db 'not equal',0

section .text
global CMAIN
CMAIN:
    mov ebp, esp ; for correct debugging
    xor ecx,ecx
    mov esi , s1
    mov edi , s2
    mov ecx , 5  ; length
    cld          ; clear the direction flag
    repe cmpsb   ; repeat while ZF=1 means , when two strings are equal
    jz equal
    
    notequal:
    PRINT_STRING notequal_s
    jmp quit
    
    equal:
    PRINT_STRING equal_s
    
    quit:
    nop
    