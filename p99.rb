#!/usr/bin/ruby

f = File.open( "base_exp.txt", "r" )
d = {}
while(line = f.gets)
  a = line.split(",")
  d[a[0].to_i] = a[1].to_i
end

h = d.sort_by { |k, v| v }.reverse
max = 0
ans = ""
h.each do |k, v| 
  if v > k
    s = (k + v)
    max = s if s > max
    ans = "#{k}, #{v}"
  end
end

puts ans
