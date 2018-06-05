def choose(num)
    num = ((num%100 > 10) and (num%100 < 20)) ? num%100 : num%10
    return 1 if (num == 0) or (num >= 5 and num <= 19)
    return 0 if (num == 1)
    return 2 if (num >= 2) or (num <= 4)
end


sec = ARGV[0].to_i + ARGV[1].to_i
time = [(sec/60)/60, (sec/60)%60, sec%60]

ending = [["час","минута","секунда"],
          ["часов","минут","секунд"],
          ["часа","минуты","секунды"]
      ]
line = []
time.each_index do |inx|
    line.push("#{time[inx]} " + ending[choose(time[inx])][inx]) if time[inx] !=0
end
puts(line.join(" "))
