#!/usr/bin/ruby
d=[]
File.open( "18.txt", "r" ) do |f|
  while (line = f.gets)
    d.push(line.split())
  end
end
s=0
cursor=0
m=0
d.each_with_index do |i, q|
  i.each_with_index do |j, r| 
   cursor = r if j.to_i > m and r <= cursor + 1 and r >= cursor - 1
  end
  s += d[q][cursor].to_i
end
puts s

