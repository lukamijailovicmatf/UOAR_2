.intel_syntax noprefix

.text

.global polukvadrat

# unsigned polukvadrat(unsigned x)
#    eax                   edi
polukvadrat:
    enter 0, 0

    mov eax, edi
    mul edi      # eax - kvadrat = x*x

    shr eax, 1

    # alternativa
    # mov esi, 2
    # xor edx, edx
    # div esi  # eax = kvadrat / 2  edx = kvadrat % 2

    leave
    ret
