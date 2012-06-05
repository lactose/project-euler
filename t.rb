def countdown(n)
  if n == 0 
    puts "blastoff!"
  else
    puts n
    countdown(n-1)
  end
end

def factorial(n)
  if n <= 1 
    return 1
  else
    return n * factorial(n-1)
  end
end

def fibonacci(n)
  if n == 0 
    return 0
  elsif n == 1
    return 1
  else
    return (fibonacci(n-1)  + fibonacci(n-2))
  end
end

def swap(str, a, b)
  temp = str[b]
  str[b] = str[a]
  str[a] = temp
  return str
end

def permute(string, index)
  if index == string.size or string.size < 2
    return string
  else
    (index..string.size-1).each do |i|
      puts i
      string = swap(string, i, i+1)
      puts string
    end
  end
end

permute("abcd", 0)
