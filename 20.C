

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define k 6

main()
  {
    int A[k] = {5,9,6,7,9,4};
    int x;
    int y = 0;
    int max=A[0];
    int max2=A[0];
    clrscr();
    for(x=0; x<k; x++)
    {
      if (A[x]>max) max=A[x];
      if (A[x]!=max && A[x]>max2)  max2=A[x];
    }




     printf("второе по величине: %d", max2);


    getch();
  }
