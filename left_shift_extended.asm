; This program performs a 1-bit left shift on a 16-bit number (4000h) using extended shifting. 
[org 0x0100]
jmp start
num1: dw 4000
start:
shl byte[num1] , 1
rcl byte [num1+1] , 1
mov ax , 0x4c00
int 0x21