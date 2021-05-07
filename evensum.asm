.model small
.stack 100h

.data  

arr1 db 1,2,3,4,5,6,7,8,9,10  
len equ $-arr1
even db 0

.code



main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ch,0
    mov cl,02 
    
    lea si,arr1 
    
    loops:
    
    CMP ch,len
    je exit
    
    inc ch
    
    mov al,[si]
    mov ah,0
    div cl
    
    CMP ah,0
    je iseven  
    inc si
    jne loops
    
    
    iseven:
    add dl,[si]
    inc si
    jmp loops:  



  exit: 
  endp main

end main