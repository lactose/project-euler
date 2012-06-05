import math
from math import sqrt
import time

def d(n):
  s = 0
  for i in range(1, n - 1):
    if n%i==0:
      s+=i
  return s

s = []
e=0
a = time.clock()
for i in range(1, 9999):
  j = d(i)
  if (d(j) == i and i != j and i not in s):
    s.append(i)
    s.append(j)
    print i, j
    i=j
b = time.clock()
for i in s:
  e += i
print e
print "elapsed time: ", b-a
