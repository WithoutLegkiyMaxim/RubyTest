def choose(num)
    num = ((num%100 > 10) and (num%100 < 20)) ? num%100 : num%10
    return ((num == 0) or (num >= 5 and num <= 19)) ? 2 : (num == 1) ? 1 :  3
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
