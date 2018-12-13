
;In this project our goal is multiply two 32 bits numbers with each other (11223344h and 55667788h )
;Firstly I divide numbers to 2 16 bits numbers then I multiply them part by part.
;After that I sum the getting results. (BE CAREFUL ABOUT DIGIT VALUES OF EACH PART) 
;Then store the final result in the memory
;Final result in the [20B0h] location. 
  

org 100h

mov ax,a
mov bx,d     ; a*d
mul bx
mov [2050h],0000h       ; 16bit shift to left
mov [2050h+2],ax
mov [2050h+4],dx

mov ax,b
mov bx,d
mul bx               ;b*d
 
mov [2050h+6],ax
mov [2050h+8],dx


mov bx,[2050h] ; 
mov ax,[2050h+6] ;
add ax,bx
mov [2060h],ax
mov dx,[2052h]
mov ax,[2050h+8]
adc ax,dx
mov [2060h+2],ax
mov bx,[2054h]
mov ax,0000h
adc ax,bx
mov [2064h],ax       ; result = 11223344 * 7788





mov ax,c
mov bx,b     ; c*b
mul bx
mov [2080h],0000h       ; 16bit shift to left
mov [2080h+2],ax
mov [2080h+4],dx



mov ax,c
mov bx,a
mul bx               ;c*a
 
mov [2090h+4],ax
mov [2090h+6],dx
mov [2090h+2],0000h
mov [2090h],0000h



mov bx,[2080h] ; 
mov ax,[2090h] ;
add ax,bx
mov [20A0h],ax
mov dx,[2082h]
mov ax,[2092h]
adc ax,dx
mov [20A0h+2],ax
mov bx,[2084h]
mov ax,[2094h]
adc ax,bx
mov [20A0h+4],ax
mov bx,[2086h]
mov ax,[2096h]
adc ax,bx
mov [20A0h+6],ax

;;;;;;;;;;;;;;;;

final :


mov bx,[2060h] ; 
mov ax,[20A0h] ;
add ax,bx
mov [20B0h],ax
mov dx,[2062h]
mov ax,[20A0h+2]
adc ax,dx
mov [20B0h+2],ax
mov bx,[2064h]
mov ax,[20A0h+4]
adc ax,bx
mov [20B0h+4],ax
mov bx,[2066h]
mov ax,[20A0h+6]
adc ax,bx
mov [20B0h+6],ax

ret

a dw 1122h        ;1122h
b dw 3344h        ;2233h
c dw 5566h        ;5566h
d dw 7788h        ;7788h

