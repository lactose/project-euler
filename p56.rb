#!/usr/bin/ruby

def sum_digits(n)
  s=0
  n.to_s.chars.to_a.each do |k|
    s+=k.to_i
  end
  return s
end
def p56(c, m)

  v = 0
  max = 0
  (c..m).each do |i|
    (c..m).each do |j|
      v = sum_digits(i**j)
      max = v unless max > v
    end
  end

  return max

end

#for 100
puts p56(90, 99)

#for 200
puts p56(190, 199)
