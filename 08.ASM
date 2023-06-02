  .model tiny
  .code
  org 100h
  include _abc.mac      ;библиотека макросов
Start:
  CLS                   ;очистка экрана
  mov BX, offset y
  mov CX, 6
Metka:
  mov AL,[BX]
  PRINT
  inc BX
  dec CX
  jnz Metka
  PAUSE                 ;пауза
  STOP                  ;стоп
  y db  "ABCDEF"        ;переменные
; Len = $ - Y - 1       ;константы

; include _dec.pp       ;библиотека подпрограмм

;                       ;--тексты ПОДПРОГРАММ--
  end Start
