#include<stdio.h>
#include<stdlib.h>
#include<conio.h>
main()
   {
   int R;   //радиус
   float S; //площадь
   const float Pi=3.14; //пи
   clrscr();
   gotoxy(40,30);
   puts("название");
   printf("\nВведи радиус: ");
   scanf("%d", &R);
   S = Pi  * R * R;
   printf("Площадь круга: %0.2f\n", S);
   getch();
   }