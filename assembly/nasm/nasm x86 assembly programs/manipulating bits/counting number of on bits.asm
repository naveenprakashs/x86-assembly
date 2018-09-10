%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
   xor eax, eax
   xor ecx, ecx
   xor edx, edx
   
   mov cl , 8          ; loop counter
   mov al , 0xF8       ; number to be tested
   mov dl , 0          ; count for ON bits
   
   count_number_of_on_bits:
   shl al , 1
   jnc skip
   
   increment:
   inc dl 
   
   skip:
   loop count_number_of_on_bits
   
   nop
   nop