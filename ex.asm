.model small

.stack 100h

.data
  
arr1 db 5,2,8,9,12,3,1,6,13,15,7,10 
len equ $-arr1 

arr2 db 5 dup(?)  
arr3 db 5 dup(?)
arr4 db 5 dup(?) 

zeros db 0
ones db 0
twos db 0
  
.code

 
main proc 
    
    
    mov ax,@data
    mov ds,ax
    
    mov ch,0
    mov cl,03  
    
    lea si,arr1
    lea di,arr2
    
    loop1: 
    CMP ch,len
    je exit
    
    inc ch 
    mov al,[si]
    mov ah,0
    div cl 
    
    
    CMP ah,0
    je isdiv 
    inc si
    jmp loop1
    
    
    isdiv: 
    mov dl,[si]
    mov [di],dl
    inc si 
    inc di
    jmp loop1 
    
    
    
    
    
    


exit: 
endp main


end main