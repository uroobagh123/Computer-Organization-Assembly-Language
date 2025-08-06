; This program multiplies two 16-bit numbers using the shift-and-add binary multiplication method.
[org 0x100] 
jmp start 
multiplicand: dw 13 
multiplier: dw 5 
result: dw 0 
start: mov cx, 4 
 mov bl, [multiplicand] 
 mov dx, [multiplier] 
  mov bh, [multiplicand+1] 
checkbit: shr dx, 1 
 jnc skip 
 add byte [result], bl 
 adc byte [result + 1 ], bh 
skip: shl byte bl, 1 
	  rcl byte bh , 1
 dec cx 
 jnz checkbit 
 mov ax, 0x4c00
int0x21