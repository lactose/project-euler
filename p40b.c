#include <stdio.h>
#include <math.h>

int d(n) {
  int digits = (log10f(n) / log10(10));
  int i = 1;
  int a = (n - (pow(10.0, (digits-1))));
  int d = 9;
  int f=0;
  while(i < digits) {
    f += (d * i);
    d *= 10;
    i++;
  }
  a = (n - f)/(4);
  f = (a + pow(10.0, digits-1));
  return f;
} 
int f(n) {
  int digits = (log10f(n) / log10(10)) + 1;
  int i = 1;
  int a = (n - (pow(10.0, (digits-1))));
  int d = 9;
  int f=0;
  while(i < digits) {
    f += (d * i);
    d *= 10;
    i++;
  }
  f += (a * i);
  f++;
  return f;
}


int main(int argc, char **argv) {
  int t = 1;
  int p = 1;
  int i = 1;
  /*while(t <= 1000000) {
    t = d(i);
    if(t == 10 || t == 100 || t == 1000 || t == 10000 || t == 100000 || t == 1000000) {
      int j = i;
      while(j >= 10) { 
        j /= 10;
      }
      printf("found j=%d where t = %d \n", j, t);
      p *= j;
    } else if( t >= 9995 && t <= 10001) {
      printf("found near j, i is %d and t is %d \n", i, t);
    }
    i++;
  }*/
  p = d(11373);
  i = f(p);
  printf("d(11373)=%d, f(11373)=%d\n", p, i);
  p = d(10000);
  i = f(p);
  printf("d(10000)=%d, f(10000)=%d\n", p, i);
  p = d(445);
  i = f(p);
  printf("d(445)=%d, f(445)=%d\n", p, i);
  p = d(500212);
  i = f(p);
  printf("d(500212)=%d, f(500212)=%d\n", p, i);

}
