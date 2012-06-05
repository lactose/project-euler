#!/usr/bin/ruby
m = [1, 2, 5, 10, 20, 50, 100, 200]
d = m.permutation.map(&:join)

puts d[20][2]
