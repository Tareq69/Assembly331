.model small
.stack 100h

.data


.code


main proc
    



mov ax,1110B 
mov bx,ax
mov dx,0


         
         
p1:
and bx,1000B
jmp addbl


addbl:
add dx,bx
jmp p2


p2: 

mov bx,ax
and bx,0100B
jmp addbl1


addbl1:
add dx,bx
jmp p3

p3: 
mov bx,ax
and bx,0010B
jmp addbl2

addbl2:
add dx,bx
jmp p4

p4:
mov bx,ax
and bx,0001B
jmp addbl3

addbl3:
add dx,bx
hlt




   
endp main
end main