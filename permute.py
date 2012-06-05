#!/usr/bin/python
def swap(a, b, s):
  s[a], s[b] = s[b], s[a]
  return s

p = "dude"
print p, swap(0,1,p)
