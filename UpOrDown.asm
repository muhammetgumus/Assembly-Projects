
; In this project our aim to get the number of down and up for specific number.
; I arbitrarily chose number 22 below.
 

org 100h

lea si,array
mov cx,5


l1:
  lodsb  
  cmp al,22
  jb small
  inc UPOREQUAL
  jmp final
    small:
    inc DOWN
    final:
    loop l1

ret

array DB 20,21,22,23,24
UPOREQUAL DB 0
DOWN DB 0


