#!/usr/bin/ruby
o="0123456789"
d = o.chars.to_a.permutation.map(&:join)
puts d[999999]

