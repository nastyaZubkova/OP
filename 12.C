
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

main()
  {
    int x;
    int y;
    clrscr();

   /* for(y=1; y<=9; y++)
      {
	for(x=1; x<=9; x++)
	{
	  printf("%3d", y*x);
	}
	printf("\n");
      }     */     //ᯮᮡ1

      for(y=1; y<=9; y++)
	for(x=1; x<=9; x++)
	{
	  gotoxy(x*7+4, y*2+3);
	  printf("%d", y*x);
	}



    getch();
  }
