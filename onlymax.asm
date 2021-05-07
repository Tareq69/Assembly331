.model small
.stack 100h

.data

arr db 15,6,7,8,03,10,11,5,02,14
len equ $-arr
max db ?
min db ? 

.code



main proc
    
    
    
    mov ax,@data
    mov ds,ax
    
    mov cx,len
     ; run loop 10 times 
    
    lea si,arr  ; points to 01 in arr
    
    lea di,arr    ;points to 01 in arr
                
    mov dh,[si]
    mov min,ch 
    ; loads 6 in bh
    
    search:
        
    mov al,dh
    mov bh,[di]  
         
    cmp al,bh       ; compares element1 and element2 
    jl minimum      ; if element1>element2
    jmp first         
    
    x:
    inc di
    
    
    loop search
    hlt
    
     first:  
     mov min,dh
     jmp x
  
    minimum:
    mov bh,[di] ; load 6 in bh
    mov dh,bh
    mov min,dh  ; load 6 in min
    jmp x
    
    
       
exit:
endp main 

end main

