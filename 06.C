#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main()
   {
   int R;   //радиус
   float S; //площадь
   char A;
   const float Pi=3.14; //пи
   clrscr();
   gotoxy(40,30);
   puts("название");
 Metka:
   printf("\nВведи радиус: ");
   scanf("%d", &R);
   if (R < 0)
     {
	puts("ошибка");
	goto Metka;
     }
   S = Pi * R * R;
   printf("Площадь круга: %0.2f\n", S);
 Klav:
   printf("еще?");
   A = getch();
   if (A == 13) goto Metka;
   if (A == 27) exit(0);
   puts("не та");
   goto Klav;
   }