  .model tiny         ;������ �����, ����ᥣ���⭠�
  .code               ;��砫� ᥣ���⮢ �����, ��砫� ᥣ���⮢ ������, �⥪
  org 100h            ;�ணࠬ�� ��稭����� � �⮩ �祩��(100h)

Start:                ;��砫� ⥪�� �ணࠬ��(begin)
  mov BX,offset Y     ;� ॣ���� �� ����頥��� ���� ��६����� �(����� �祩��)
Metka:
  mov AL,[BX]         ;� ॣ AL ����頥��� �᫮ �� �祩�� �����, ���ன BX
  mov AH,0Eh          ;����� ᨬ���� �� ॣ AL
  int 10h
  inc BX
  cmp AL,0            ;�ࠢ����� AL � �㫥�
  jnz Metka           ;�஢��塞 "�� ���� �� ��" 
  ret                 ;������ �� ����ணࠬ��(����� HLT)
Y db "ABCD",0
  end Start           ;����� ⥪�� �ணࠬ��(end.)