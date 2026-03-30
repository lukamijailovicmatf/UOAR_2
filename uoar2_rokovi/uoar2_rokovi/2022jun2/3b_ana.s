# extern int find_power(int n, int k, int *ms, int nm);
#eax                        edi  esi   rdx       ecx
.intel_syntax noprefix
.text
.global find_power
find_power:
    enter 0,0
    
    
    mov r8d,0           #brojac i
    
petlja:
    mov eax,-1
    cmp r8d,ecx
    je kraj
    
    mov r9d,[rdx+4*r8]
    push rdi
    push rsi
    push rdx
    push rcx
    push r8
    push r9
    
    mov esi,r9d
    call power
    
    pop r9
    pop r8
    pop rcx
    pop rdx
    pop rsi
    pop rdi
    
    add eax,1
    cmp eax,esi
    jne dalje
        mov eax,r8d
        leave
        ret
dalje:
    inc r8d
    jmp petlja
kraj:
    leave
    ret
