  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   ;���⪠ ��࠭�
  mov BX, offset y
  mov CX, Len
Metka:
  mov AL,[BX]
  PRINT
  inc BX
  dec CX
  jnz Metka
  PAUSE                 ;��㧠
  STOP                  ;�⮯
  y db  "ABCDEF"        ;��६����
  Len = 6               ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������
  end Start
