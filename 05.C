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
 Metka: 
   printf("\nВведи радиус: ");
   scanf("%d", &R);
   if (R == 0) exit(o); // ввести 0 чтобы выйти из программы
   if (R < 0)
     {
	puts("ошибка");
	goto Metka;
     }
   S = Pi * R * R;
   printf("Площадь круга: %0.2f\n", S);
   goto Metka;
   }