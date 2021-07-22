# Conversion of c constructs to x86_64 assembly


## local variables
### C 
- local variables are stored in stack
- local variables are referenced relative to base pointer 
- stack grows downwards in x86_64  highest -> lowest memory 
- x86_64 is little endian , LSB is stored in lower address , MSB is stored in higher address


```C 
void test() {
    int sum = 0;
    int first_num = 1, second_num = 2;
    char c = 'a';   
 }

```

### x86_64
```assembly 
test:
  push rbp
  mov rbp, rsp
  mov DWORD PTR [rbp-4], 0
  mov DWORD PTR [rbp-8], 1
  mov DWORD PTR [rbp-12], 2
  mov BYTE PTR [rbp-13], 97
  nop
  pop rbp
  ret
```

