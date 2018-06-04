def choose(num)
    num = ((num%100 > 10) and (num%100 < 20)) ? num%100 : num%10
    return 2 if (num == 0) or (num >= 5 and num <= 19)
    return 1 if (num == 1)
    return 3 if (num >= 2) or (num <= 4)
end


sec = Array.new(ARGV).inject(0) {|sum, el| sum += el.to_i}
time = [(sec/60)/60, (sec/60)%60, sec%60]

ending = {1 => ["час","минута","секунда"],
          2 => ["часов","минут","секунд"],
          3 => ["часа","минуты","секунды"]
          }
line = []
time.each_index do |inx|
    line.push("#{time[inx]} " + ending[choose(time[inx])][inx]) if time[inx] !=0
end
puts(line.join(" "))
