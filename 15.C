
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

main()
  {
    int f,c;
    clrscr();

    for(c=0; c<=15; c++)  printf("%2d", c);
    printf("\n\n");

    for(f=0; f<8; f++)
      {
	for(c=0; c<=15; c++)
	{
	  textcolor(c);
	  textbackground(f);
	  cprintf("#");
	  textbackground(0);
	  cprintf(" ");
	}
	textcolor(7);
	cprintf("%2d", f);
	printf("\n\n");
      }         //ᯮᮡ1





    getch();
  }
