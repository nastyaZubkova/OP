  .model tiny         ;������ �����, ����ᥣ���⭠�
  .code               ;��砫� ᥣ���⮢ �����, ��砫� ᥣ���⮢ ������, �⥪
  org 100h            ;�ணࠬ�� ��稭����� � �⮩ �祩��(100h)
include 05.txt		
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