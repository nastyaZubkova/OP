                 ;--蠡���
  .model tiny
  .code
  org 100h
  include _abc.mac      ;������⥪� ����ᮢ
Start:
  CLS                   
  TEXT y  
  CALL Shifr
  TEXT y
  CALL Shifr
  TEXT y
  	 
                        ;--⥪�� ���������--
  PAUSE                 ;��㧠
  STOP                  ;�⮯
  
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
Y db "��஦��", 13, 10, '$'
Len = $ - Y - 3
K = 12

include _dec.pp                 ;����⠭��

; include _dec.pp       ;������⥪� ����ணࠬ�

;                       ;--⥪��� �����������--

end Start
