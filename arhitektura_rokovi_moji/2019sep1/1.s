.intel_syntax noprefix

.text

.global faktorijel

# long faktorijel(long n)
# rax              rdi
faktorijel:
    enter 0, 0

    mov rax, 1   # rax - f
    mov rcx, 2   # rcx - i

for_petlja:
    cmp rcx, rdi
    jg for_petlja_kraj

        imul rcx

    inc rcx
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
