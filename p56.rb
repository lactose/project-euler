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
  (1..m).step(c) do |i|
    (1..m).step(c) do |j|
      v = sum_digits(i**j)
      max = v unless max > v
    end
  end

  return max

end

puts p56(1, 100)
