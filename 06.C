#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main()
   {
   int R;   //ࠤ���
   float S; //���頤�
   char A;
   const float Pi=3.14; //��
   clrscr();
   gotoxy(40,30);
   puts("��������");
 Metka:
   printf("\n����� ࠤ���: ");
   scanf("%d", &R);
   if (R < 0)
     {
	puts("�訡��");
	goto Metka;
     }
   S = Pi * R * R;
   printf("���頤� ��㣠: %0.2f\n", S);
 Klav:
   printf("��?");
   A = getch();
   if (A == 13) goto Metka;
   if (A == 27) exit(0);
   puts("�� �");
   goto Klav;
   }