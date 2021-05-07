.model small

.stack 100h 

.data

x db 10

y db 8

.code



main proc
    
  mov ax,@data
  mov ds,ax
    
  mov al,x
  mov bl,y
  
 
  ; doing x-1
  dec al
  
  ;doing y-1
  dec bl 
  
  ; moving x-1 in dl
  mov dl,al 
  
  ; doing (x-1)(x-1)
  mul al 
  
  ;storing (x-1)(x-1) in cx
  mov cx,ax
  
  ;moving y-1 in al
  mov al,bl
  ;moving y-1 in dl
  mov dh,al
  ;doing (y-1)(y-1)
  mul al
  
  ;storing (y-1)(y-1) in dx
  mov dx,ax
  
  ;doing (x-1)(x-1) + (y-1)(y-1)
  add cx,dx
  
   
endp main
end main
   