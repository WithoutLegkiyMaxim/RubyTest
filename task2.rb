def right(a,b)
    n_right = 0
    flag = false
    (0..a.length).each do |i|
        flag = true if a == b
        n_right = i if flag
        break if flag
        a.push(a.shift)
    end
    return flag ? n_right : flag
end
n_right = right(Array.new(ARGV[0].split('')),Array.new(ARGV[1].split('')))
n_left = ARGV[0].length - n_right if n_right
puts not(n_left and n_right) ? -1 : (n_left<n_right) ? n_left : n_right