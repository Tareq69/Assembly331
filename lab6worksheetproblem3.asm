include 'emu8086.inc'
.model small
.stack 100h


.data
       
arr db 16 dup (?) 
len equ $-arr  

min db 0
max db 0 
avg db 0  
.code
  
main proc   
    
    
    ; Maximum is stored in max variable 
    ; Minimum is stored in min variable 
    ; Vaerage is stored in avg variable 
    
    
    mov ax,@data
    mov ds,ax

    mov cx,len
    lea si,arr
    
    loop1:
    mov ah,01h
    int 21h
    mov bh,al
    sub bh,30h
    mov [si],bh
    mov ah,02h 
    mov dl,' '
    int 21h
    inc si
    loop loop1
    
    lea di,arr
    mov dh,0
    mov cx,len
    
    loop2:
    mov al,[di]
    add dh,al
    inc di 
    loop loop2
    jmp average
    
    average:
    mov ah,0
    mov al,dh
    mov dl,len
    div dl 
    mov avg,al
    jmp maxmin
    
    maxmin: 
    lea si,arr  ; points to 01 in arr
    lea di,arr    ;points to 01 in arr            
    mov dh,[si]
    mov min,dh 
    mov cx,len
    ;loads 1 in bh
    
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
     ; run loop len times 
    
    lea si,arr  
    
    lea di,arr    
                
    mov dh,[si]
    mov max,dh 
    
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
    
    
    
    ; Maximum is stored in max variable 
    ; Minimum is stored in min variable 
    ; Vaerage is stored in avg variable 
    
    
     
        
define_print_string     
define_get_string
define_print_num 
define_print_num_uns 
    
endp main
end main
