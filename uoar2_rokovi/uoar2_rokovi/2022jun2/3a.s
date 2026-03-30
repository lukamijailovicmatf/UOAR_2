.intel_syntax noprefix

.text

.global power

# int power(int n, int m);
# eax       edi    esi

power:
    enter 0, 0

    cmp esi, 0
    je eksponent_nula

    mov eax, edi    # eax - proizvod
    mov ecx, 1      # ecx - i = 0

for_petlja_power:
    cmp ecx, esi
    jge kraj_for_petlja_power

        mul edi

    inc ecx
    jmp for_petlja_power

eksponent_nula:
    mov eax, 1

kraj_for_petlja_power:
    leave
    ret
