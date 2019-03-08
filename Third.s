@ Thirdprogram:
.section .data
a:.hword  -2  @16-bit signedinteger 
.section .text
.globl  _start
_start:
mov r0, #0x1    @= 1
movs r1, #0xFFFFFFFF   @= -1 (signed)
mov r2, #0xFF   @= 255
mov r3, #0x101  @= 257
mov r4, #0x400  @= 1024

mov r7, #1
svc #0
.end
