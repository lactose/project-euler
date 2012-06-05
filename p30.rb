#!/usr/bin/ruby
LIMIT=500000

def breakup(n)
  return n.to_s.chars.to_a
end
b = []
(10..LIMIT).each do |i| 
  d = breakup(i)
  s=0
  d.each do |j|
    s+=(j.to_i**5)
    break unless s <= i
  end
  if s == i 
    b.push(i)
    puts i
  end
end
s=0
b.each do |i|
  s+=i.to_i
end

puts "final: #{s}"
