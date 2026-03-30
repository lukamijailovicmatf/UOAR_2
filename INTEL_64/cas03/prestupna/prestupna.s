.intel_syntax noprefix

.text

.global prestupna

# unsigned prestupna(unsigned g)
#   eax                 edi
prestupna:
    enter 0, 0

    mov eax, edi  # u eax ubacujemo ono sto zelimo da podelimo
    mov esi, 4
    xor edx, edx  # posto je unsigned prosirimo nulama
    div esi       # eax = g / 4   edx = g % 4

    cmp edx, 0
    jne nije_prestupna

    mov eax, edi
    mov esi, 100
    xor edx, edx
    div esi       # eax = g / 100   edx = g % 100

    cmp edx, 0
    jne jeste_prestupna

    mov eax, edi
    mov esi, 400
    xor edx, edx
    div esi       # eax = g / 400   edx = g % 400

    cmp edx, 0
    jne nije_prestupna

jeste_prestupna:
    mov eax, 1
    jmp kraj

nije_prestupna:
    mov eax, 0

kraj:
    leave
    ret
