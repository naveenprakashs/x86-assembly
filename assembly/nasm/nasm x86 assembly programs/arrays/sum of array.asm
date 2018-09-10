%include "io.inc"

section .data
array db 1,2,3,40,5

section .text
global CMAIN
CMAIN:
   mov ebp, esp; for correct debugging
   xor eax , eax     ; sum is stored in eax
   xor ebx , ebx
   xor ecx , ecx
   
   mov ecx , 5       ; number of elements on array
   mov edx , array   ; pointer for array
   
sum:
add al , [edx]
inc edx
loop sum

PRINT_DEC 4,eax

program_end:
