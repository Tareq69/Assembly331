.model small
.stack 100h

.data

max db  0

.code


main proc
    
   
  mov ax,@data
  mov ds,ax
  mov al,3
  mov bl,7
  mov cl,2
  
  
  
  cmp al,bl
  jle x1
  jmp x3
  
  x1:
  cmp al,cl
  jle x2
  jmp x3
  
  x2:
  mov max,al
  hlt
  
  x3:
  cmp bl,al
  jl x4
  jmp x6
  
  x4:
  cmp bl,cl
  jl x5
  
  x5:
  mov max,bl
  hlt
  
  x6:
    mov max,cl
    hlt
  
    
    
    
    
    
endp main
end main