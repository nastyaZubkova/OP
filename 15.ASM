                 ;--шаблон
  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   
  TEXT Y
  mov BX, offset Y  
  mov CX, Len
Met:
  mov AL,[BX]
  PRINT
  WRITELN
  INC BX
  DEC CX
  JNZ Met	 
                        ;--текст ПРОГРАММЫ--
  PAUSE                 ;пауза
  STOP                  ;стоп

Y db  "ABCD", 13, 10, '$'    ;переменные
Len = $ - Y - 3                ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--

end Start
