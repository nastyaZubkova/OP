#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
main()
   {
   int R;   //ࠤ���
   float S; //���頤�
   const float Pi=3.14; //��
   clrscr();
   gotoxy(6,2);
   textcolor(14);
   cputs("��������");
   textcolor(14);
   cprintf("\n\r����� ࠤ���: ");
   textcolor(14);
   cscanf("%d", &R);
   S = Pi  * R * R;
   textcolor(14);
   cprintf("���頤� ��㣠: ");
   textcolor(14);
   cprintf("%0.2f\n\r", S);
   getch();
   }
