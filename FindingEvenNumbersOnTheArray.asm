
;In this Project our aim to getting the even numbers from one array 
;and store them into another array

org 100h
lea si,array
mov cx,10
mov bl,2
mov di,0
;mov dh,index  
  L1:
    mov al,[si]
    mov dl,[si] 
    div bl
    cmp ah,0
    jne odd
    mov array2[di],dl 
    Inc di
   odd:
   
   inc si
  loop L1

ret

array db 1,2,3,4,5,6,7,12,9,14
array2 5 DUP(?)
index db 0

