include 'emu8086.inc'
.model small
.stack 100h


.data


arr db 10 DUP  (?)
len equ $-arr 


.code


main proc
    
  
  mov ax,@data
  mov ds,ax
  
  lea si,arr
  mov bl,10 
  
  loop1:
  cmp bl,0
  je y
  call scan_num
  mov [si],cl
  inc si
  dec bl
  jmp loop1
  
  y:
  lea si,arr
  mov al,[si]
  inc si 
  loop2:
  mov ah,[si]
  cmp al,ah
  jl max
   
  x1:
  inc si
  
  loop loop2
  hlt
  
  max:
  mov dl,ah
  jmp x1
  
define_scan_num  
endp main
end main