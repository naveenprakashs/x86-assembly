%include "io.inc"

section .data
array db 1,20,30,40,50

section .text
global CMAIN
CMAIN:
   mov ebp, esp      ; for correct debugging
   xor eax , eax     ; sum is stored in eax
   xor ebx , ebx
   xor ecx , ecx
   
   mov ecx , 5       ; number of elements on array
   mov edx , array   ; pointer for array
   
sum:
add al , [edx]
adc ah , 0     ; if value is more than 127 in al , the carry is added to ah
inc edx
loop sum

PRINT_DEC 4,eax

program_end:
