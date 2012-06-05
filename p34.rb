#!/usr/bin/ruby
def factosum(n)
  s=0
  n.to_s.chars.to_a.each do |c|
    if c != "0" then s += (1..c.to_i).inject(:*) else s+= 1 end
  end
  return s
end
s=0
(3..100000).each do |i|
  s += i if i == factosum(i)
end
puts s
