#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main()
   {
   int R;   //ࠤ���
   float S; //���頤�
   const float Pi=3.14; //��
   clrscr();
   gotoxy(40,30);
   puts("��������");
 Metka: 
   printf("\n����� ࠤ���: ");
   scanf("%d", &R);
   if (R == 0) exit(o); // ����� 0 �⮡� ��� �� �ணࠬ��
   if (R < 0)
     {
	puts("�訡��");
	goto Metka;
     }
   S = Pi * R * R;
   printf("���頤� ��㣠: %0.2f\n", S);
   goto Metka;
   }