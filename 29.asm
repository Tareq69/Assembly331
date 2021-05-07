.model small
.stack 100h

.data
 
count db 0 
result db 0
.code

main proc
     
     mov ax,@data
     mov ds,ax
        
     mov al,10h
     mov bl,90h
     
     
     add al,bl
     mov result,al
     mov bh,0
     mov cx,8
     p1: 
     shl al,1
     jc countone
     loop p1
     jmp p2
     
     countone:
     inc bh
     mov count,bh
     jmp p1 
     
     p2:
     test bh,1
     jz even
     jmp odd
        
     even:
     mov dl,bh
     hlt
     
     odd:
     mov dh,bh
     hlt
     
        
        
exit:       
endp main
end main