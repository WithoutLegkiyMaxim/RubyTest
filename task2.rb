a, b = ARGV[0].split(''), ARGV[1].split('')
len = a.length
(0..len).each do |i|
  a << a.shift
  if a.eql?(b)
    puts (i+1)<(len >> 1) ? (i+1) : len-(i+1)
    exit
  end
end
puts -1
