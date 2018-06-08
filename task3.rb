ending = [["час","минута","секунда"],
                ["часов","минут","секунд"],
                ["часа","минуты","секунды"]
                ]
sec = ARGV[0].to_i + ARGV[1].to_i
inx = 2
line = []
while sec>=1
	z = sec%60
	if not z == 0
	    k = z % 10 if z>15 or z < 5
	    k = case k
	        when 2 then ending[2][inx]
	        when 3 then ending[2][inx]
	        when 4 then ending[2][inx]
	        when 1 then ending[0][inx]
	        else ending[1][inx]
	        end
	    line.unshift("#{z} #{k}")
	end
	sec = sec/60
	inx -= 1
end
puts(line.join(" "))