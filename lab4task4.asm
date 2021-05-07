include 'emu8086.inc'
.model small
.stack 100h


.data

str1 db 20 dup (?) 


str2 db 20 dup (?)


buffersize db 20 


buffer1 db 20 dup (0)  

buffer2 db 20 dup (0)




.code


main proc
    
    
     mov ax,@data
     mov ds,ax  
     
     
     mov ah,0Ah
     mov dx,offset buffersize
     int 21h  
     printn ''     
     
   
    ; mov ah,09h
    ; mov dx, offset buffersize
    ; int 21h
     
     
     
     lea si,str1
     lea di,str2+6
     
     
      
     
     mov cx,7
     
     reverse:
     mov ah,[si] 
     jmp store
     
     x:
     inc si
     
     loop reverse 
     jmp compare
      
     store:
     mov [di],ah
     dec di
     jmp x
     
     compare:
     mov al,str1
     mov ah,str2
     cmp al,ah
     je yes
     jmp no
           
     yes:
     print 'yes' 
     hlt
     
     no:
     print 'yes'
     hlt
     
    
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
    
    