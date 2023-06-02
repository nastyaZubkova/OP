
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

    printf("число квадрат\n");
    for(x=1; x<=12; x++)
      printf("%3d %6d\n", x,x*x);


    getch();
  }
