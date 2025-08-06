; This program adds three word-sized values stored in consecutive memory locations. The result is accumulated directly into memory instead of using a register for the final sum.

 [org 0x0100] 
 mov ax, [num1] ; load first number in ax 
 mov [num1+6], ax ; store first number in result 
 mov ax, [num1+2] ; load second number in ax 
 add [num1+6], ax ; add second number to result 
 mov ax, [num1+4] ; load third number in ax 
 add [num1+6], ax ; add third number to result 
 mov ax, 0x4c00 ; terminate program 
 int 0x21 
num1: dw 5, 10, 15, 0