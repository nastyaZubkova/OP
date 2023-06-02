
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define Name "mas.dat"
#define k 5
main()
  {
    int A[k];
    int x;
    FILE *p;

    p =fopen(Name, "r+");
    for (x=0; x<k; x++)
      fread(&A[x], sizeof(int), 1, p);
    fclose(p);
    clrscr();
    for (x=0; x<k; x++)
      printf("%6d", A[x]);


    getch();
  }
