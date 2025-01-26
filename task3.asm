task3

.MODEL SMALL
 
.STACK 100H

.DATA
a dB ?
b db ?
c db ?
d db ?
w db ?
x db ?
y db ?
z db ?
w1 db ?
x1 db ?
y1 db ?
z1 db ?
s1 db "valid rectangle$"
s2 db "Invalid rectangle$"
a db 100 
b db 10 
c db ? 
e dw ?




.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX 




;code
mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov a,al 

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov b,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov c,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov d,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov w,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov w2,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov x,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov x1,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov y,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov y1,al  

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov z,al

mov ah,1
int 21h             ; input neyar jonno and store it in al 
mov z1,al  
            
            
   ;;;input getting the value from input and from the value we get whole value of w        
            
            
            

cmp w,90
je equal1
jmp exit
equal1:
cmp x,90
je equal2
jmp exit


equal2:
cmp y,90
je equal3
jmp exit

equal3:
cmp z,90
je calcu
jmp exit

calcu: 

cmp a,b
je calcu2
jmp exit

calcu2:
cmp c,d
lea dx,s1
mov ah,9







exit:
lea dx,s2
mov ah,9 ;to show the string 
int 21h 

 

 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN