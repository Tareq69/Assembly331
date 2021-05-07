include 'emu8086.inc'
.model small
.stack 100h

.data

x dw 5

.code


main proc 
    
    mov ax,@data
    mov ds,ax 
    
    mov al,5 ; al -> 5
    mov bl,0   ; bl -> 0
    mov ch,0   ; ch -> 0

                  
   loop1:  
            cmp al,bl   ; al < 5 loop will run
            je exit     ; al = 5 loop will terminate using exit label
            inc bl      ; incrementing  bl 
            mov cl,bl  ; storing bl's value in cl -> idea is to run the second loop untill the number in bl
            loop2:
            print '*' ; printing *    
            inc ch    ; ch is a counter that initially stores 0 and run's untill cl (for ch=0; ch<cl; ch++) 
            cmp ch,cl
            je z       ; if ch = cl we jump to z label 
            jmp loop2 ; if ch!= cl we jump back to lable two and again print *
            z:
            printn ''    ; printing next line after printing * for cl amount of time
            mov ch,0   ; counter is reset to 0 for next iteration of first loop
            
    jmp loop1 
      
exit:    
endp main  


DEFINE_PRINT_STRING
end main