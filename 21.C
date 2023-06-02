

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define k 6

main()
  {
    int A[k] = {5,8,3,7,4,6};
    int x;
    int y;
    int temp;
    clrscr();

    printf("масссив до обработки:    ");
    for(x=0;x<k;x++)
      printf("%4d", A[x]);

    for(x=0,y=k-1;x<y;x++,y--)
      {
	temp = A[x];
	A[x] = A[y];
	A[y] = temp;
      }

    printf("\nмасссив после обработки: ");
    for(x=0;x<k;x++)
      printf("%4d", A[x]);


    getch();
  }
