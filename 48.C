
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
    int A[k] = {1,12,123,1234,12345};
    int x;
    FILE *p;

    p =fopen(Name, "w+");
    for (x=0; x<k; x++)
      fwrite(&A[x], sizeof(int), 1, p);
      fclose(p);



    getch();
  }
