#include <stdio.h>
#include <math.h>

int is_pentagon(n) {
  int i=1;
  int p=0;
  while(1) {
    p = (i*(3*i-1))/2;
    if ( n == p) {
      return 1;
    } else if (p > n) {
      return 0;
    }
    i++;
  } 
  return 0;
}
int main(int argc, char **argv) {
  int i=1;
  int a=0;
  int b=0;

  while(1) {
    a =   
}
