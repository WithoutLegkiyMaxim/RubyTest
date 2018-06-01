sec = Array.new(ARGV).inject(0) {|sum, el| sum += el.to_i}
hour = (sec/60)/60
minute = (sec/60)%60
sec = sec%60
ending = {1 => ["час","минута","секунда"], 0 => ["часов","минут","секунд"]}
for x in 2..5 do
    ending = ending.merge({x => ["часа","минуты","секунды"]})
end
for x in 5..19 do
    ending = ending.merge({x => ["часов","минут","секунд"]})
end
line = ""
def FuncDing(number, n, inging)
    if (number%100)>20 or (number%100)<10
        return "#{number} " + inging[number%10][n]
    else
        return "#{number} " + inging[number%10+10][n]
    end
end

if hour > 0
    line += FuncDing(hour, 0, ending) + " "
    line += FuncDing(minute, 1, ending) + " "
    line += FuncDing(sec, 2, ending)
elsif minute>0
    line += FuncDing(minute, 1, ending) +  " "
    line += FuncDing(sec, 2, ending)
else
    line += FuncDing(sec, 2, ending)
end
puts(line)
