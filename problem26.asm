.model small
.stack 100h

.data
 
 init db ?
 lower db ?
 higher db ?
 result db ?
 right db ?
 left db ?
 
.code


main proc

  
  mov ax,@data
  mov ds,ax
  
mov al,053H

mov init,al

and al,00FH

mov bl,al 

mov lower,bl 

mov al,053H
and al,0F0H  


mov cl,al

mov higher,cl 


shr cl,4 
mov right,cl
shl bl,4
mov left,bl
add cl,bl

mov result,cl





    
    
endp main
end main