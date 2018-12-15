org 100h

; In this project we aim to get maximum value of array
 


lea si,array
mov cx,5

check:
 mov al,[si]
 mov ah,[si+1]    
 
 cmp al,ah    
 jg adjust
 cmp ah,bigger
 jb final
 mov bigger,ah
 jmp final
 adjust:
 cmp al,bigger
 jb final
 mov bigger,al
 final:
 INC SI    
 loop check    

ret


array db 5,8,22,1,9,11
bigger db ?



