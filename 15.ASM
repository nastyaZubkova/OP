                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
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
                        ;--⥪�� ���������--
  PAUSE                 ;��㧠
  STOP                  ;�⮯

Y db  "ABCD", 13, 10, '$'    ;��६����
Len = $ - Y - 3                ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
