
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

main(int K, char *p[])
  {
    int x,y,z;
    x = atoi(p[1]);
    y = atoi(p[2]);
    z = x + y;
    clrscr();
    printf("%d + %d = %d", x, y, z);

    getch();
  }
