.model small

.stack 100h


.data

.code
main proc
    

    mov al,80H
    mov bl,0EH
    sub al,bl
    jo save
    jmp save1
    
    save:
    mov dl,al    
    hlt
    save1:
    mov dh,al
    hlt
    
    
    
    
    
endp main
end main