                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   
  TEXT T1  
  CALL MAS
    mov BX, offset Y
    mov CX, Len
    mov AL, 0
Met:
  ADD AL,[BX] 
  INC BX
  DEC CX
  JNZ Met
TEXT T2
CALL Decal	 
                        ;--⥪�� ���������--
  PAUSE                 ;��㧠
  STOP                  ;�⮯
 
T1 db "������", '$'
T2 db 13, 10, "�����", '$'
Y db  5, 20, 100    ;��६����
Len = $ - Y
include _dec.pp                 ;����⠭��
MAS:
  PUSH AX
  PUSH BX
  PUSH CX
  mov BX, offset Y
  mov CX, Len
  MAS1:
    mov AL, [BX]
    CALL Decal
    INC BX
    DEC CX
    JNZ MAS1
    POP CX
    POP BX
    POP AX
RET
; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
