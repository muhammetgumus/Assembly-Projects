 
;Our goal is reverse the given array and store them onto ES.
 
org 100h
  
lea si,array
mov ax,5000h
mov es,ax
mov di,1103H


mov cx,6
   L1:
     CLD     
     lodsb
     STD
     stosb
   loop L1

ret

array DB '1','2','3','4','5','6'



