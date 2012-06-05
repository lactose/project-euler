#!/usr/bin/ruby
t1 = Time.now
def palindrome?(n)
  return  n.to_s == n.to_s.reverse
end
s = 0
(1...1000000).each do |i|
  s+= i if palindrome?(i) and palindrome?(i.to_s(2))
end
t2 = Time.now
puts s, "#{(t2 - t1)}s"
