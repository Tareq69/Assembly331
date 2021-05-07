; multi-segment executable file template.

.model small

.stack 100h

.data
  
arr1 db 1,2,3,4,5
var db 5
arr2 db 5 dup<?>


.code

 
main proc

    mov ax, @data
    mov ds, ax 
    
    lea si, arr1
    lea di, arr2+4
    
    mov al,[si]
    mov [di],al  
    
    inc si  
    dec di  
    
    mov al,[si]
    mov [di],al  
    
    inc si
    dec di
    
    mov al,[si]
    mov [di],al  
    
    inc si
    dec di
    
    mov al,[si]
    mov [di],al  
    
    inc si
    dec di
    
    mov al,[si]
    mov [di],al  
    
    inc si
    dec di
     
     
endp main
end main