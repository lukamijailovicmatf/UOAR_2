.intel_syntax noprefix

.text

.global suma

# unsigned suma(unsigned n)
#   eax            edi
suma:
    enter 0, 0

    mov eax, edi   # eax = n 
    add edi, 1     # edi = n+1
    mul edi        # edx:eax = n * (n+1)

    shr eax, 1     # deljenje sa 2 je siftovanje u desno

    leave
    ret

