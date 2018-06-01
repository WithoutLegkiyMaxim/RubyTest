ARGV.each_index {|index| ARGV[index] = ARGV[index].gsub(/(Р|К|Н|р|к|н)/){''}}
puts(ARGV.join(' '))
