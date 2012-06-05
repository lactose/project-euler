#!/usr/bin/ruby
max=0
dub=""
ans=0
sub=""
(1...1000).each do |d|
  a = sprintf("%.90f", 1.0/d).to_s
  (8..a.size).each do |i|
    if a.scan(a[2..i]).length.to_i > 1 
      c = a[2..i].size
      puts "1/#{d}"
      puts "#{a[2..i]} == #{a[i+1..i+c]}"
      puts a
      next unless a[2..i] == a[i+1..i+c] and (a[2..4] != a[4..6] and a[4..6] != a[6..8])
    else 
      next
    end
    if c > max 
      t = a[2..i].chars.to_a.uniq
      if t.size > 1 
        max = c
        ans = d
        sub = a[2..i]
        dub = a
      end
    end
  end
end
puts ans
puts sub
puts dub
