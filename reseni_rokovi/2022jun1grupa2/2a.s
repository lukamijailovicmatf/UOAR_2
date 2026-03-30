.text

.global suma_parnih

.align 2

@ int suma_parnih(int n)
@ r0              r0

suma_parnih:
    push {fp, lr}
    mov fp, sp

    mov r1, #0      @ r1 - suma = 0

    cmp r0, #0
        neglt r0, r0

while_petlja:
    cmp r0, #0
    ble kraj_while_petlje

    push {r0, r1}
    mov r1, #10
    bl __modsi3
    mov r2, r0          @ r2 - cifra = n % 10
    pop {r0, r1}

    push {r0-r2}
    mov r0, r2
    mov r1, #2
    bl __modsi3
    mov r3, r0          @ r3 - cifra % 2
    pop {r0-r2}

    cmp r3, #0
        addeq r1, r1, r2

    push {r1-r3}
    mov r1, #10
    bl __divsi3    	@ n /= 10;
    pop {r1-r3}

    b while_petlja

kraj_while_petlje:

    mov r0, r1
    
    mov sp, fp
    pop {fp, pc}
