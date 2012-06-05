#!/usr/bin/ruby
LIMIT=20162
def d(n)
  return 0 if n == 1
  if n%2==0 then step=1 else step=2 end
  s = 1
  sq = (Math::sqrt(n) + 1).to_i
  2.step(sq, step) do |i|
    if n%i == 0
      if i!=n/i
        s += (i + n/i)
      else
        s += i
      end
    end
  end
  return s
end

dd = {}
s=0
(1..LIMIT).each do |i|
  dd[i] = i if d(i) > i
  s+=i if not dd.any? {|j| dd.has_key?((dd[j]-i))}
end
puts s


