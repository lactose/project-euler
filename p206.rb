#!/usr/bin/ruby
LOWER=319421985
UPPER=4392487859

def pat(n)
  return true if /1\d2\d3\d4\d5\d6\d7\d8\d9\d0/.match(n.to_s)
  return false
end

(LOWER..UPPER).each do |i|
  break if pat(i**2)
end
puts i, i==UPPER
