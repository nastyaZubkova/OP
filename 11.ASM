  .model tiny         ;������ �����, ����ᥣ���⭠�
  .code               ;��砫� ᥣ���⮢ �����, ��砫� ᥣ���⮢ ������, �⥪
  org 100h            ;�ணࠬ�� ��稭����� � �⮩ �祩��(100h)
include _abc.mac
Start:                ;��砫� ⥪�� �ணࠬ��(begin)
  CLS
  mov AL, 'A'
  mov CX, 26
Metka1:
  PRINT
  inc AL
  dec CX
  jnz Metka1 
  WRITELN   
  PAUSE
  STOP              
  end Start           ;����� ⥪�� �ணࠬ��(end.)