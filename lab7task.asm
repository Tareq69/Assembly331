.model small
.stack 100h




.data

x LABEL BYTE
y db 0FFH

arr db DUP 10 (?)
len equ $-arr  


.code


main proc
    
  
  mov ax,@data
  mov ds,ax
  
  mov dx,len
  
  
  
    
    
endp main
end main