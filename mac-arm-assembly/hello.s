.global _start
.align 2
_start: mov     x2, #1
        adr     x1, msg
        mov     x2, #13
        mov     x16, #4
        svc     #0
        mov     x0, #0
        mov     x16, #1
        svc     #0

msg:    .ascii  "Hello World!\n"