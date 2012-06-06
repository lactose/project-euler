#!/usr/bin/python

d={}

def sqr_sum(n):
  return sum(int(x)**2 for x in str(n))

def nchain(n):
  c = 0
  while c < 2:
    n = sqr_sum(n)
    if n == 1 or n == 89:
      c+=1
  return n

def compute(limit):
  s = 0
  for i in range(2, limit):
    if d.has_key(i) or nchain(i) == 89:
      d[i] = True
      s += 1
  return s

print compute(10000000)
