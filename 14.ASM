  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
  ;#1
  ; mov DH, 10
  ; mov BL, 10
  ; mov BH, 0
  ; mov AH, 2
  ; int 10h
  ; TEXT Z

   ;#2
   ; mov DH, 11
   ; mov DL, 11
   ; CALL KUR
   ; TEXT Z
  
  ;#3
  ;KURS macro P1, P2
  ;  PUSH AX
  ;  PUSH BX
  ;  PUSH DX
  ;mov DH, P1
  ;mov DL, P2
  ;mov BH, 0
  ;mov AH,2
  ;int 10h
  ;  POP DX
  ;  POP BX
  ;  POP AX
  ;endm

  ;#4
  ;KURS y1,x1
  ;TEXT Z
  
  ;#5
  ;KURS y2,x2
  ;TEXT Z
  
Start:
  CLS        
  

  PAUSE                 ;пауза
  STOP                  ;стоп
  Z db "ABCD", '$'
 ;#2
 ;KUR: PUSH BX
 ;     PUSH AX
 ;     MOV BH,0
 ;     MOV AH,2
 ;     int 10h
 ;     POP AX
 ;     POP BX
 ;     Ret  


 ;#4
 ; y1 = 13
 ; x1 = 13

 ;#5
 ;y2 db 14
 ;x2 db 14
end Start
