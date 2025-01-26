.MODEL SMALL
 
.STACK 100H

.DATA
base db 22
height db 6
result dw ?
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX

;iniitialize DS
mov al,base
mov bl,height
mul bl ;basexheight in ax
mov cl,2
div cl ;1/2 ax ans
mov result,ax
 
;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

