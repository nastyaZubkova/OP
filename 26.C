

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define n 10

main()
  {
    char *T;
    int x;
    int k;
    clrscr();
    printf("����� ");
    scanf("%s", T);
    k = strlen(T);
    for(x=0; x<k; x++)
      printf("%c\n", T[x]);
    getch();
  }
