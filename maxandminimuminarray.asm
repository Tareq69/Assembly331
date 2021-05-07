.model small
.stack 100h

.data

arr db 01,6,7,8,03,10,11,5,02,4
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
    mov min,dh 
    ; loads 6 in bh
    
    search:
        
    mov al,dh
    mov bh,[di]  
         
    cmp al,bh       ; compares element1 and element2 
    jg minimum      ; if element1>element2
    jmp first         
    
    x:
    inc di
    
    
    loop search
    jmp process2
    
     first:  
     mov min,dh
     jmp x
  
    minimum:
    mov bh,[di] ; load 6 in bh
    mov dh,bh
    mov min,dh  ; load 6 in min
    jmp x 
    
    
    
    process2:
    
    
    mov cx,len
     ; run loop 10 times 
    
    lea si,arr  ; points to 01 in arr
    
    lea di,arr    ;points to 01 in arr
                
    mov dh,[si]
    mov max,dh 
    ; loads 6 in bh
    
    search1:
        
    mov al,dh
    mov bh,[di]  
         
    cmp al,bh       ; compares element1 and element2 
    jl maximum      ; if element1<element2
    jmp second         
    
    x1:
    inc di
    
    
    loop search1
    hlt
    
     second:  
     mov max,dh
     jmp x1
  
    maximum:
    mov bh,[di] ; load 6 in bh
    mov dh,bh
    mov max,dh  ; load 6 in min
    jmp x1
    
    
       
exit:
endp main 

end main

