s=1
i=3
sum=1
step=2
LIMIT=1000
while true do  
  sum += i
  s += 1
  i += step
  if s == 4
    step += 2
    s=0
  end
  break if step > LIMIT and s == 1
end
puts sum
