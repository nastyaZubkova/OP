

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define f 7

main()
  {
    char *T;
    int x,c;
    int k;
    clrscr();
    randomize();
    c = 1;
    printf("введи ");
    scanf("%s", T);
    k = strlen(T);
    for(x=0; x<k; x++)
	{
	  do
	    f = random(f)+1;
	  while(c==f);
	  textbackground(f);

	  textcolor(c);
	  cprintf("%c", T[x]);
	  c++;
	  if (c>15) c=1;
	}
    getch();
  }
