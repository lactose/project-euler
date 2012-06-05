#!/usr/bin/ruby
UBOUND=100
LBOUND=2

def get_distinct_terms(lower, upper)
  t1 = Time.now
  d = []
  (lower..upper).each do |a| 
    (lower..upper).each do |b|
      c = a**b
      d.push(c) unless d.include?(c)
    end
  end
  t2 = Time.now
  puts (t2 - t1) * 1000, "ms"
  return d
end

puts get_distinct_terms(LBOUND, UBOUND).count

