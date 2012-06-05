#!/usr/bin/ruby
UBOUND=100
LBOUND=2

def get_distinct_terms(lower, upper)
  d = {}
  (lower..upper).each do |a| 
    (lower..upper).each do |b|
      c = a**b
      d[c]=c 
    end
  end
  return d
end

puts get_distinct_terms(LBOUND, UBOUND).count

