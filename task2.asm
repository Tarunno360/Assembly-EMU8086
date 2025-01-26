task2
.MODEL SMALL
 
.STACK 100H

.DATA
var db ?
rem db ?
result db ?
rem2 db ?
s1 db "result$"
s2 db "remainder$"
.CODE
MAIN PROC

MOV AX,@DATA
MOV DS,AX
;code
mov ah,1
int 21h
mov bh,al ;X

mov ah,1
int 21h
mov bl,al ;Y

mov ah,1
int 21h
mov ch,al ;Z

sub bh,30h ;9
sub bl,30h ;8
sub ch,30h ;6

;Caculation part
mov al,bh
mul ch ;X*Z
mov dx,ax
mov cl,6
mov al,bl
mul cl   ;y*6

add dx,ax ;(x*z)+y*6  dx e ans

mov var,3
mov ah,0
mov al,bh
div var    ;x//3
mov rem,al

mov al,bl
mul ch      ; yxz

add rem,al   ;divisor

mov ax,dx
div rem     ; whole devide

mov result,al
mov rem, ah 

add result,30
add rem,30

lea dx,s1
mov ah,9
int 21h

mov dl,result
mov ah,2
int 21h

mov ah,2
mov dl,0dh
int 21h             ;next line jawar jonno
mov dl,0ah
int 21h

lea dx,s2
mov ah,9
int 21h

mov dl,rem
mov ah,2
int 21h
