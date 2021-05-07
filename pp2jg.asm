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
    
    mov ch,0
    mov cl,03  
    
    lea si,arr1
    lea di,arr2 
    mov index_for_zeroes,di
    
    
    lea di,arr3
    mov index_for_ones,di
    
    lea di,arr4
    mov index_for_twos,di
    
    loop1: 
    CMP ch,len
    je exit
     
    mov al,[si]
    mov ah,0
    div cl 
    
    
    CMP ah,1
    je pushone
    jl pushzero
    jg pushtwo
    
    back:
    inc si
    inc ch
    
    jmp loop1
    
    
    pushzero: 
    mov al,[si] 
    mov di,index_for_zeroes
    mov [di],al 
    inc di 
    mov index_for_zeroes,di
    jmp back  
    
    pushone: 
    mov al,[si]
    mov di,index_for_ones
    mov [di],al 
    inc di 
    mov index_for_ones,di
    jmp back  
    
    pushtwo: 
    mov al,[si] 
    mov di,index_for_twos
    mov [di],al 
    inc di  
    mov index_for_twos,di
    jmp back  
    
    
    
    
    
    
    
    


exit: 
endp main


end main