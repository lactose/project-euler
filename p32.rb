#!/usr/bin/ruby
#
def factors(n)
  a = []
  (2..n-1).each do |i|
    if n % i == 0
      a.push(i)
    end
  end
end

def p32()
  (1234..9876).each do |i|
   p = factors(i)
   p.each do |j| 
     p.each do |k|
       n = i.to_s + j.to_s + k.to_s
       return true if n.chars.to_a.sort == "123456789"
     end
   end
  end
  return false
end

puts p32()

