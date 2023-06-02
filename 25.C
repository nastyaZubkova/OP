

#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>
#define n 10

main()
  {
    int A[n+1];
    int x;
    int temp;
    clrscr();

    randomize();
    for(x=1;x<=n;x++) A[x] = 0;
    for(temp=0; temp<n; temp++)
    {
      do
	x = random(n)+1;
      while(A[x]==1);
	printf("%3d", x);
	A[x] = 1;
    }

    getch();
  }
