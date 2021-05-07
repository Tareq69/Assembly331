.model small

.stack 100h

.data
  
arr1 db 5,2,8,9,12,3,1,6,13,15,7,10 
len equ $-arr1 

arr2 db 5 dup(?)  
arr3 db 5 dup(?)
arr4 db 5 dup(?) 

index_for_zeroes dw 0 
index_for_ones dw 0
index_for_twos dw 0

  
.code

 
main proc 
    
    
    mov ax,@data
    mov ds,ax
    
    
    lea si,arr1
    
    lea di,arr2
    mov index_for_zeroes,di
    
    lea di,arr3
    mov index_for_ones,di 
    
    lea di,arr4
    mov index_for_twos,di
    
    
    mov cx,len
    mov bh,03
    
    p:
    mov al,[si]
    mov ah,0
    div bh
    
    cmp ah,1
    jl forzero
    je forone
    jg fortwo  
    
    x:
    inc si
    
    loop p  
    hlt
    
   
    pushinArray macro ind
    mov al,[si] 
    mov di,ind
    mov [di],al
    inc di
    mov ind,di 
    jmp x 
    
    endm pushinArray
    
    forzero:
    pushinArray index_for_zeroes
    
    forone:
    pushinArray index_for_ones
    
    fortwo:
    pushinArray index_for_twos
    
    
    



 
endp main
end main