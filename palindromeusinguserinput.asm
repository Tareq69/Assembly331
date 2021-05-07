include 'emu8086.inc'
.model small
.stack 100h

.data 


x lABEL BYTE                    ; this part is done with the help of a tutorital from internet
y db 0FFH
len db ?
str db 0FFH dup  ('$') 
str1 db 0FFH dup ('$')  

.code


main proc
    
        
    mov ax,@data
    mov ds,ax 
    
    
    lea dx,x
    mov ah,0Ah
    int 21h
    
    printn ''
    
    
    lea si,str 
    lea di,str1
    
    mov dl,len
    dec dl
    mov dh,0
    add si,dx 
    mov cl,len
    mov ch,0   
    
    Reverse:                ; Reversing the string and storing it in str1
    mov al,[si]
    mov [di],al
    inc di 
    dec si
    loop Reverse
    
    lea si,str
    lea di,str1
    
    mov cl,len
    mov ch,0
    
    check:                  ; Checking whethere the strings are same
    mov al,[si]
    cmp [di],al
    jne notpalindrome
    inc di
    inc si
    loop check 
    jmp palindrome   
    
    
   
    palindrome:
    print 'Yes'
    hlt
    
    notpalindrome:
    print 'No'
    hlt
    
    
    
define_print_string        
endp main
end main