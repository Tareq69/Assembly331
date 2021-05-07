.model small
.stack 100h

.data

max db  0

.code


main proc
    
   
  mov ax,@data
  mov ds,ax
  mov al,5
  mov bl,1
  mov cl,9
  
  
  
  cmp al,bl
  jge x1
  jmp x3
  
  x1:
  cmp al,cl
  jge x2
  jmp x3
  
  x2:
  mov max,al
  hlt
  
  x3:
  cmp bl,al
  jg x4
  jmp x6
  
  x4:
  cmp bl,cl
  jg x5
  
  x5:
  mov max,bl
  hlt
  
  x6:
    mov max,cl
    hlt
  
    
    
    
    
    
endp main
end main