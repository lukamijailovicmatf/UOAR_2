.intel_syntax noprefix

.text

.global trougao

# int trougao(int a, int b, int c)
# eax          edi    esi    edx

trougao:
    enter 0, 0

    cmp edi, 0
    jle nije_trougao

    cmp esi, 0
    jle nije_trougao

    cmp edx, 0
    jle nije_trougao

    mov r8d, edi        # r8d - a
    add r8d, esi        # r8d - a + b

    cmp r8d, edx
    jle nije_trougao

    mov r8d, edi        # r8d - a
    add r8d, edx        # r8d - a + c

    cmp r8d, esi
    jle nije_trougao

    mov r8d, esi        # r8d - b
    add r8d, edx        # r8d - b + c

    cmp r8d, edi
    jle nije_trougao
    	mov eax, 1
    	jmp kraj

nije_trougao:
    mov eax, 0

kraj:
    leave
    ret
