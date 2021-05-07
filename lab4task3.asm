include 'emu8086.inc'
.model small
.stack 100h


.data

str db 20 dup (?) 

str2 db 20 dup (?)

str3 db 20 dup (?)

buffesize db 20 

buffer db 20 dup (0)  




.code


main proc
    
    
     mov ax,@data
     mov ds,ax  
     
     
     mov ah,0Ah
     mov dx,offset buffesize
     int 21h  
     printn ''     
     
   
     mov ah,09h
     mov dx, offset buffesize
     int 21h
     
     
    
     
     reverse:
     
     
    
    
    ; palindrome:
     ;print 'Given string is palindrome'
     ;jmp exit
     
     ;Notpalindrome:
     ;print 'Given string is not palindrome'
     ;jmp exit 
    
   
exit:    
endp main  

DEFINE_PRINT_STRING 
;DEFINE_GET_STRING

end main
    
    