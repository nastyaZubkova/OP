                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   
  TEXT y  
  CALL Shifr
  TEXT y
  CALL Shifr
  TEXT y
  	 
                        ;--текст ПРОГРАММЫ--
  PAUSE                 ;пауза
  STOP                  ;стоп
  
Shifr:
  push bx
  push cx
  mov BX, offset y
  mov CX, Len
  Shifr1:
    xor byte ptr [BX], K
    inc BX
    dec CX
    jnz Shifr1
  pop cx
  pop bx
Ret
Y db "пирожок", 13, 10, '$'
Len = $ - Y - 3
K = 12

include _dec.pp                 ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
