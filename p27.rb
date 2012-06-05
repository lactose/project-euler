

def prime?(n)
  return false if n < 2
  return true if n == 2
  (3...Math.sqrt(n)).step(2) do |i|
    if n%i == 0 
      return false
    end
  end
  return true
end

def find_primes(a, b)
  n=0
  while true do
    break unless prime?(((n**2) + (a*n) + b))
    n+=1
  end
  return n
end

max=0
ans=0
t1 = Time.now
(-999..1000).step(2) do |a|
  puts "on #{a}"
  (-999..1000).step(2) do |b|
    next if not prime?(b)
    cur = find_primes(a, b)
    if cur > max 
      max = cur
      ans = " a=#{a} b=#{b} a*b=#{(a*b)}"
    end
  end
end
t2 = Time.now
puts "Completed: #{(t2-t1)}s Maximum: #{max}, Product: #{ans}"

