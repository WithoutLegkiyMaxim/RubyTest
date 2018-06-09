a, b = ARGV[0].split(''), ARGV[1].split('')
result = nil
len = a.length
(0..len).each do |i|
	a.push(a.shift)
	if a.eql?(b)
		result = i+1
		break
	end
end
if result.class == Fixnum
	puts result<(len>>2) ? result : len-result
else
	puts -1
end