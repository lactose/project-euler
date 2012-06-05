f = File.open( "names.txt", "r" ) 
d = f.read.split(',') 
n=0
m=0
d.sort.each_with_index do |s, i|
  s2 = s.gsub!(/\"/, "")
  s2.each_byte do |c|
    m+= c-64
  end
  n += ((i+1) * (m))
  m=0
end
puts n

