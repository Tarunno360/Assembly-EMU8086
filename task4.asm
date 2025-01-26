task4


.MODEL SMALL
 
.STACK 100H

.DATA
a db 100 
b db 10 
c db ? 
e dw ?
month db ?
depo db ?
rem1 db ? 
rem2 db ?
output dw ?  
.CODE
MAIN PROC

;iniitialize DS

MOV AX,@DATA
MOV DS,AX

mov ah,1
int 21h
mov bh, al
mov ah,1     
int 21h
mov bl, al
mov ah,1
int 21h   
mov ch, al    

  
sub bh, 30h
sub bl, 30h  
sub ch, 30h      

mov al, bh   
mov cl, a  
mul cl
        
        
mov c,ax 


mov al,bl    
mov cl,b
mul cl

mov d,ax   

mov dh,0
mov dl,ch   

mov e,dx      


mov ax,c  
mov bx,d  
add ax,bx 
mov bx,e   
add ax,bx 

mov depo,ax     ;depo value

mov ah,1
int 21h
mov bh, al 

mov ah,1     
int 21h
mov bl, al

sub bh, 30h
sub bl, 30h 
  
mov al, bh   
mov cl, b  
mul cl  
mov c,ax  

mov dh,0
mov dl,ch   

mov month,dx       ;month value


; calculation part

mov ax,depo
mov cl,100
div cl
mov rem1,al

mov ax,mo
mov cl,12
div cl
mov rem2,al

mov rem2,al
mul rem1

mov cx,18

mul cx  ; whole value

add depo,cx 

mov output,depo












       

 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
