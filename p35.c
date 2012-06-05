#include <stdio.h>
#include <math.h>

int is_prime(int n)
{
  if(n < 2) {
    return 0;
  } else if (n==2) {
    return 1;
  } else if (n%2==0) {
    return 0;
  }
  int i;
  for(i=3; i <= sqrt(n); i+= 2) { 
    if(n%i == 0) {
      return 0;
    }
  }
  return 1;
}
int next_rotation(int n) {
  int num, d, ncopy, div;
  
  ncopy = n;
  div = 1;

  while( ncopy > 9) {
    ncopy /= 10;
    div *= 10;
  }

  d = n % 10;
  n /= 10;
  n = n + d * div;

  return n;
}
int is_circular_prime(int n) {
  int d = (log10f(n) / log10(10)) + 1;
  int i = 0;

  while ( i < d ) {
    if( !is_prime(n) ) {
      return 0;
    }
    n = next_rotation(n);
    i++;
  }
  return 1;
}
int main(int argc, char **argv) {
  int c=1;
  int i;
  int LIMIT=1000000;
  for(i=3;i < LIMIT;i+=2) {
    if( is_circular_prime(i) == 1 ) {
      c+=1;
    }
  }
  printf("there are %d circular primes.\n", c);
}  
