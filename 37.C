
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <math.h>
#include <alloc.h>

void Sapka()
  {
    clrscr();
    puts("подсказка");
  }

void Pr1(int A)
  {
    printf("%4d\n", A);
  }

void Pr2(int A, char *B)
  {
    textcolor(A);
    cprintf("%s", B); // или cputs(B);
  }

void Color(int A, int B)
  {
    textcolor(A);
    textbackground(B);
  }

int Max2(int A, int B)
  {
    /*int Temp;
    if (A>B) Temp = A;
    if (B>A) Temp = B;
    return Temp;  */
    if(A>B) return A;
    return B;
  }

int Max22(int A, int B)
  {
    int Temp;
    Temp = A;
    if (B>A) Temp = B;
    return Temp;
  }

int Max23(int A, int B)
  {
    return A>B ? A:B;
  }

main()

  {
    int x=12, y=4, z;
    char *T = "привет";
    Sapka();
    Pr1(x); Pr1(y*10); Pr1(2+3);
    Pr2(x, T); Pr2(10, "Вася");
    Color(14,6); cputs("text");
    z = Max2(x,y); Pr1(z);
    printf("%d", Max2(13,17));
    z = Max22(x,y); Pr1(z);
    printf("%d", Max2(13,18));
    z = Max23(x,y); Pr1(z);
    printf("%d", Max2(13,19));

    getch();
  }
