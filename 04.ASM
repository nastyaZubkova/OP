  .model tiny         ;������ �����, ����ᥣ���⭠�
  .code               ;��砫� ᥣ���⮢ �����, ��砫� ᥣ���⮢ ������, �⥪
  org 100h            ;�ணࠬ�� ��稭����� � �⮩ �祩��(100h)
PRINT macro
  mov AH,0Eh
  int 10h
endm
CLS macro
  mov AX,3
  int 10h
endm	
PAUSE macro
  mov AH,10h
  int 16h
endm
STOP macro
  mov AH,4Ch
  int 21h
endm		
Start:                ;��砫� ⥪�� �ணࠬ��(begin)
  CLS
  mov BX,offset Y     ;� ॣ���� �� ����頥��� ���� ��६����� �(����� �祩��)
Metka:
  mov AL,[BX]
  PRINT          
  inc BX
  cmp AL,0            ;�ࠢ����� AL � �㫥�
  jnz Metka           ;�஢��塞 "�� ���� �� ��" 
  PAUSE
  STOP
  Y db "ABCD",0
  end Start           ;����� ⥪�� �ணࠬ��(end.)