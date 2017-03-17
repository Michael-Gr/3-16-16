def lcd(size, number)

  numbers = [ [ " - ", "   ", " - ", " - ", "   ", " - ", " - ", " - ", " - ", " - " ],
              [ "| |", "  |", "  |", "  |", "| |", "|  ", "|  ", "  |", "| |", "| |" ],
              [ "   ", "   ", " - ", " - ", " - ", " - ", " - ", "   ", " - ", " - " ],
              [ "| |", "  |", "|  ", "  |", "  |", "  |", "| |", "  |", "| |", "  |" ],
              [ " - ", "   ", " - ", " - ", "   ", " - ", " - ", "   ", " - ", " - " ] ]

  number.split("").map(&:to_i).each { |num| numbers.each_with_index { |line, index| index.even? ? (puts line[num][0] + (line[num][1] * size) + line[num][2]) : size.times { puts line[num][0] + (line[num][1] * size) + line[num][2] } } }

end

puts "What what number would you like to show?"
number = gets.chomp

puts "And how large would you like it?"
size = gets.chomp.to_i

lcd(size, number)
p ARGV.first
