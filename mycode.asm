.MODEL SMALL
 
.STACK 100H

.DATA
a dB 10
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX
 
;task1 enter your code he
mov ax,9
mov bx,ax
;task2
mov bx,10
mov cx,0
mov cx,ax
mov ax,bx
mov bx,cx    
;task3
add ax,bx
;task4
sub ax,bx  
sub bx,ax    ; register becomes FFFF so there is an error 
;task5
;mul 
mov al,2
mov bl,3
mul bl      
;word mul
mov ax,100
mov bx,10000
mul bx    
;div 
mov ax,25
movbl,5
div bl
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
