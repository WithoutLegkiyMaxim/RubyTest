a, b = ARGV[0].split(''), ARGV[1].split('')
res = nil
len = a.length
(0..len).each do |i|
    a.push(a.shift)
    if a.eql?(b)
        res = i+1
        puts res<(len >> 1) ? res : len-res
        break
    end

end
puts -1 if not res