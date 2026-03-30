.intel_syntax noprefix

.text

.global zameni

# void zameni(int* px, int* py)
#  -            rdi      rsi
zameni:
    enter 0, 0

    mov r8d, [rdi]    # vx = *px
    mov r9d, [rsi]    # vy = *py
    mov [rdi], r9d
    mov [rsi], r8d

    leave
    ret
