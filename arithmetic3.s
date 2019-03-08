@ Thirdprogram:register = val2+3+val3-val1
.section .data
val1: .hword -60
val2: .hword 11
val3: .hword 16
register: .hword 0
.section .text
.globl  _start
_start:
ldr r1, =val1 //Load the memory address of val1 into r1
ldrsh r1, [r1]  //Load the value val1 into r1
ldr r2, =val2 //Load the memory address of val2 into r2
ldr r2, [r2]  //Load the value val2 into r2
ldr r3, =val3 //Load the memory address of val3 into r3
ldr r3, [r3]  //Load the value val3 into r3
mov r4, #3
add r2, r4,r2  //Add 3 to r2 and store into r2
add r2, r3,r2 //Add r3 to r2 amd store into r2
sub r2, r2,r1 //Subtract r1 from r2 and store into r2
ldr r5, =register//Load the memory address of register into r5 
str r2, [r5] //store r2 into register

mov r7, #1
svc #0
.end
