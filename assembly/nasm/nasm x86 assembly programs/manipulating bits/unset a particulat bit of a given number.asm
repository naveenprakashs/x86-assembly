%include "io.inc"

section .bss
number resb 4
position_of_the_bit_to_change resb 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
xor eax,eax
xor ebx,ebx
xor ecx,ecx

GET_DEC 4,number
GET_DEC 1,position_of_the_bit_to_change

mov eax , DWORD [number]
mov cl , byte [ position_of_the_bit_to_change ]
mov edx , 1
shl edx , cl
not edx         ; it is the trick here
and eax , edx

nop
nop