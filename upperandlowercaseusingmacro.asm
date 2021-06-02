.model small
.stack 100h



.data   



str db 'Final Assignment$'
len equ $-str 

str1 db 20 dup (?) 
str2 db 20 dup (?)

.code




main proc
    
    
    mov ax,@data
    mov ds,ax
    
    
   
    lea si,str
    lea di,str1
    lea bx,str2
    mov cx,len
    
    macro upper p1
        
        loop1:
        mov al,[si]
        cmp al,41h
    
    
    

    
endp main
end main