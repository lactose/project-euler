#!/usr/bin/ruby

def is_triangle(n)
  return (0.5)*(-1 + Math.sqrt(8*n + 1)) % 1 == 0  
end

f = File.open( "words.txt", "r" ) 
d = f.read.gsub!(/\"/, '').split(',')
ans = 0

while d.size > 0 
  s = 0
  str = d.pop
  str.each_byte do |c| 
    s += (c - 64)
  end
  ans += 1 if is_triangle(s)
end

puts ans 
