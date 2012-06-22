#!/usr/bin/ruby
LIMIT=20162
def d(n)
  return 0 if n == 1
  if n%2==0 then step=1 else step=2 end
  s = 1
  sq = (Math::sqrt(n) + 1).to_i
  2.step(sq, step) do |i|
    if n%i == 0
      if i!=n/i
        s += (i + n/i)
      else
        s += i
      end
    end
  end
  return s
end

dd = {}
de= {}
s=0
(1..LIMIT).each do |i|
  dd[i] = i if d(i) > i
end
dd.each do |k, v|
  dd.each do |k2, v2|
    p = v2 + v
    de[p]=p
  end
end
(1..LIMIT).each do |i|
  s+= i if de[i].nil? 
end

puts s
puts s


