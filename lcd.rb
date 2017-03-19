def lcd(size, number)

  numbers = [ [ " - ", "   ", " - ", " - ", "   ", " - ", " - ", " - ", " - ", " - " ],
              [ "| |", "  |", "  |", "  |", "| |", "|  ", "|  ", "  |", "| |", "| |" ],
              [ "   ", "   ", " - ", " - ", " - ", " - ", " - ", "   ", " - ", " - " ],
              [ "| |", "  |", "|  ", "  |", "  |", "  |", "| |", "  |", "| |", "  |" ],
              [ " - ", "   ", " - ", " - ", "   ", " - ", " - ", "   ", " - ", " - " ] ]

  number.split("").map(&:to_i).each { |num| numbers.each_with_index { |line, index| index.even? ? (puts line[num][0] + (line[num][1] * size) + line[num][2]) : size.times { puts line[num][0] + (line[num][1] * size) + line[num][2] } } }

end

number = ARGV[0]

size = ARGV[1].to_i

lcd(size, number)
