; THIS PROGRAM ONLY CONTAINS STORING INSTRUCTIONS
; FLOATING POINT LOAD INSTRUCTIONS

%include "io.inc"

section .data
;floating point numbers
f1 dd 0x00000001
f2 dd 0x00000002
f3 dd 0x00000003

; integer
i  dd 0xA

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging

; fld instructions load the value to the TOS ( TOP OF STACK )
; ST(0) IS ALWAYS TOP OF STACK
; TOS = ST(0)

fld dword [f1] ; load f1's value to the ST(0)
fld dword [f2] ; load f2's value to the ST(0)
fld dword [f3] ; load f3's value to the ST(0)
fild dword [i] ; coverts integer to float and then stores at TOS 
fld1  ; loads 1 to TOS
fldz  ; loads 0 to TOS
nop
nop
nop
