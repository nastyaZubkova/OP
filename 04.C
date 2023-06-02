#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
main()
   {
   int R;   //радиус
   float S; //площадь
   const float Pi=3.14; //пи
   clrscr();
   gotoxy(6,2);
   textcolor(14);
   cputs("название");
   textcolor(14);
   cprintf("\n\rВведи радиус: ");
   textcolor(14);
   cscanf("%d", &R);
   S = Pi  * R * R;
   textcolor(14);
   cprintf("Площадь круга: ");
   textcolor(14);
   cprintf("%0.2f\n\r", S);
   getch();
   }
