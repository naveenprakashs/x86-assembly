# Conversion of c constructs to x86_64 assembly

## For loop

### C 
```c
int square() {
        int nums[10];
        int sum = 0;
        for(int i=0;i<10;i++) {
                sum+= nums[i];
        }
        return sum;
}
```

### x86_64
```
        pushq   %rbp
        movq    %rsp, %rbp
        movl    $0, -4(%rbp)    sum = 0
        movl    $0, -8(%rbp)      i = 0
        jmp     .L2
.L3:
        movl    -8(%rbp), %eax
        cltq
        movl    -48(%rbp,%rax,4), %eax
        addl    %eax, -4(%rbp)
        addl    $1, -8(%rbp)
.L2:
        cmpl    $9, -8(%rbp)  i<10
        jle     .L3
        movl    -4(%rbp), %eax
        popq    %rbp
        ret

```
