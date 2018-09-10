%include "io.inc"

section .data
msg db 'enter a num',0

section .bss
num resb 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging

    ; this program implements switch case statement in c using jump tables
    
    PRINT_STRING msg
    GET_DEC 1,num
    
    xor eax,eax
    
    mov al , byte [num]
    cmp eax , 5                 ; checks the input is larger than maximum case range
    ja defauldt                 ; if it is maximum , then jumps to the default
        
    xor ebx,ebx
    mov ebx , dword jumpTABLE
    
    mov eax , [ ebx , eax * 4]  ; scale index byte addressing
   
    jmp eax
    
    jumpTABLE:
    dd one
    dd two
    dd three
    dd four
    dd defauldt
    
    one:
         add byte [num],1
         jmp next
    two:
         add byte [num],2
         jmp next
    three:
         add byte [num],3
         jmp next
    four:
         add byte [num],4
         jmp next
    defauldt:
         add byte [num],0
     next: 
      nop
      nop
      nop