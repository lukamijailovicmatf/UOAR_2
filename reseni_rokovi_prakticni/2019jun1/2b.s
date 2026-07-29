.intel_syntax noprefix

.text

.global filtriraj

# void filtriraj(unsigned* a, unsigned* b, unsigned n, unsigned* c, unsigned* m)
#  -                rdi          rsi          edx          rcx          r8
filtriraj:
    enter 0, 0

    mov r9d, 0    # r9d - i
    mov r8, 0     # r8 - *m

for_petlja:
    cmp r9d, edx
    je for_petlja_kraj

        mov r10d, [rsi + 4*r9]  # r10d - b[i]

        cmp r10d, 1
        jne nastavak

            push rdi
            push rsi
            push rdx
            push rcx
            push r8
            push r9

            mov edi, [rdi + 4*r9]
            call polukvadrat  # eax - polukvadrat(a[i])
            # mov [rcx + 4*r8], eax

            pop r9
            pop r8
            pop rcx
            pop rdx
            pop rsi
            pop rdi

            mov [rcx + 4*r8], eax
            inc r8

    nastavak:

    inc r9d
    jmp for_petlja
for_petlja_kraj:

    leave
    ret
