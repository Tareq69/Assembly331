.model small
.stack 100h

.data 

arr1 db 6,3,1,4,0,8,9,2,7,5   
len equ $-arr1

arr2 db 5 dup(?)
arr3 db 5 dup(?)

index db 0 

index1 dw 0
index2 dw 0

.code 
     

main proc
    
    
     mov ax, @data
     mov ds, ax
 
     
    
     mov cl,2
     mov ch,0
    
     lea si,arr1
     
     lea di,arr2
     mov index1,di
     
     lea di,arr3
     mov index2,di 
     
     mov index,len
    
    
    loop1:
    cmp ch,len
    je exit
    
     
    cmp index,0
    je exit
    
     
    mov al,index   
    mov ah,0
    
    div cl
    
    cmp ah,0
    je even
    jg odd
    
    back:
    dec index
    inc si
    inc bh
    
    jmp loop1
   
    
    even:
    mov al,[si]
    mov di,index1
    mov [di],al
     
    inc di 
    mov index1,di 
    jmp back 
    
   
    odd:
    mov al,[si]
    mov di,index2
    mov [di],al
     
    inc di 
    mov index2,di 
    jmp back 
    
    
    

    
    
    
    

exit:
endp main

end main