
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

    printf("�᫮   ");
    for(x=1; x<=12; x++)
      printf("%4d", x);

    printf("\n");
    printf("������ ");

    for(x=1; x<=12; x++)
      printf("%4d", x*x);


    getch();
  }
