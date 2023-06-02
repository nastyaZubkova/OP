
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

#define k1 5
#define k2 3

void rndmas(int *M, int n)
  {
    int x;
    for(x=0;x<n;x++)
      M[x] = random(10);
  }

void prmas(int *M, int n)
  {
    int x;
    for(x=0;x<n;x++)
      printf("%4d", M[x]);
    printf("\n");
  }

int summas(int *M, int n)
  {
    int x;
    int t=0;
    for (x=0; x<n; x++)
      t=t+M[x];
    return t;
  }
main()
  {
    int A[k1];
    int B[k2];
    int z;
    clrscr();
    randomize();
    rndmas(A, k1);
    prmas(A, k1);
    z = summas(A, k1);
    printf("αγ¬¬  %d\n", z);


    rndmas(B, k2);
    prmas(B, k2);
    z = summas(B, k2);
    printf("αγ¬¬  %d\n", z);

    getch();
  }
