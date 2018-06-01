def right(a,b)
    n_right = 0
    flag = false
    for i in (0..a.length)
        if a == b
            flag = true
            break
        else
            a.push(a.shift)
            n_right += 1
        end
    end
    return n_right if flag
    return flag if not flag
end
def left(a,b)
    n_left = 0
    flag = false
    for i in (0..a.length)
        if a == b
            flag = true
            break
        else
            a.unshift(a.pop)
            n_left += 1
        end
    end
    return n_left if flag
    return flag if not flag
end
n_right = right(Array.new(ARGV[0].split('')),Array.new(ARGV[1].split('')))
n_left = left(Array.new(ARGV[0].split('')),Array.new(ARGV[1].split('')))
if n_left and n_right
    if n_left<n_right
        puts(n_left)
    else
        puts(n_right)
    end
else
    puts(-1)
end
