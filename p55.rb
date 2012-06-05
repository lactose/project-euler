#!/usr/bin/ruby
def palindrome?(n)
    return  n.to_s == n.to_s.reverse
end
def prove_lychrel(n)
  (1...50).each do |i|
    n += n.to_s.reverse.to_i
    return false if palindrome?(n)
  end
  return true
end
c = 0
(1..10000).each do |i|
  c+=1 if prove_lychrel(i)
end
puts c

