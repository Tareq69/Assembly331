.model small
.stack 100h


.data

.code


main proc
    

    mov bl,9BH
    mov bh,bl
    mov dh,bl
    
    mov cx,8
    
    reverse:
    shl bl,1
    rcr al,1
    
    loop reverse
    mov ah,al 
    
    mov bl,bh 
  
    and bh,00FH
    mov al,bh
    
    
    
    and bl,0F0H
    mov ch,bl 
    
    
    mov bl,ch
      
    mov cx,08
    mov bh,0
    
    loop1:
    shr al,1
    jc inccountl
    loop loop1
    jmp x 
    
    inccountl:
    inc bh 
    jmp loop1
    
    x:
    mov al,0
    mov cx,08
    
    loop2:
    shr bl,1
    jc inccounth
    loop loop2 
    jmp z
    
    inccounth:
    inc al 
    jmp loop2
    
    
    z:
    mov bl,dh
    
    process1:
    
    isbalanced:
    cmp al,bh
    je ispalindrome
    
    
    ispalindrome:
    cmp ah,bl
    je save
    jmp process2
    
    
    save:
    mov dl,02h
    hlt

    process2:
    
    isbalanced1:
    cmp al,bh
    je saveone
    jmp isnotpalindrome
    
    isnotpalindrome:
    cmp ah,bl
    je saveone
    jmp process4
    
    saveone:
    mov dl,01h
    hlt 
          
    process4:
    ;savethree:
    mov dl,00H
    hlt

endp main
end main