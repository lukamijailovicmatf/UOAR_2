.intel_syntax noprefix

.text

.global fibonaci

# void fibonaci(int* a, int n)
#  -              rdi    esi
fibonaci:
    enter 0, 0

    cmp esi, 0
    je kraj

    mov dword ptr [rdi], 1     # a[0] = 1

    cmp esi, 1
    je kraj

    mov dword ptr [rdi+4], 1   # a[1] = 1

    mov ecx, 2      # ecx - i

for_petlja:
    cmp ecx, esi
    je for_petlja_kraj

        mov r8d, [rdi+4*rcx-4]    # r8d - a[i-1]
        add r8d, [rdi+4*rcx-8]  # r8d += a[i-2]
        mov [rdi+4*rcx], r8d 

    inc ecx
    jmp for_petlja
for_petlja_kraj: 

kraj:
    leave
    ret
