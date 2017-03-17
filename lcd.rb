def lcd(size, number)

  # numbers = { "0" => [ " - ",
  #                      "| |",
  #                      "   ",
  #                      "| |",
  #                      " - " ],
  #
  #             "1" => [ "   ",
  #                      "  |",
  #                      "   ",
  #                      "  |",
  #                      "   " ],
  #
  #             "2" => [ " - ",
  #                      "  |",
  #                      " - ",
  #                      "|  ",
  #                      " - " ],
  #
  #             "3" => [ " - ",
  #                      "  |",
  #                      " - ",
  #                      "  |",
  #                      " - " ],
  #
  #             "4" => [ "   ",
  #                      "| |",
  #                      " - ",
  #                      "  |",
  #                      "   " ],
  #
  #             "5" => [ " - ",
  #                      "|  ",
  #                      " - ",
  #                      "  |",
  #                      " - " ],
  #
  #             "6" => [ " - ",
  #                      "|  ",
  #                      " - ",
  #                      "| |",
  #                      " - " ],
  #
  #             "7" => [ " - ",
  #                      "  |",
  #                      "   ",
  #                      "  |",
  #                      "   " ],
  #
  #             "8" => [ " - ",
  #                      "| |",
  #                      " - ",
  #                      "| |",
  #                      " - " ],
  #
  #             "9" => [ " - ",
  #                      "| |",
  #                      " - ",
  #                      "  |",
  #                      " - " ] }
  #
  # number.split("").each do |num|
  #
  #   numbers[num].each_with_index { |line, index| index.even? ? (puts line[0] + (line[1] * size) + line[2]) : size.times { puts line[0] + (line[1] * size) + line[2] } }
  #
  # end

  numbers = [ [ " - ", "   ", " - ", " - ", "   ", " - ", " - ", " - ", " - ", " - " ],
              [ "| |", "  |", "  |", "  |", "| |", "|  ", "|  ", "  |", "| |", "| |" ],
              [ "   ", "   ", " - ", " - ", " - ", " - ", " - ", "   ", " - ", " - " ],
              [ "| |", "  |", "|  ", "  |", "  |", "  |", "| |", "  |", "| |", "  |" ],
              [ " - ", "   ", " - ", " - ", "   ", " - ", " - ", "   ", " - ", " - " ] ]

  number.split("").map(&:to_i).each do |num|

    numbers.each_with_index do |line, index|

      index.even? ? (puts line[num][0] + (line[num][1] * size) + line[num][2]) : size.times { puts line[num][0] + (line[num][1] * size) + line[num][2] }

    end

  end

end

puts "What what number would you like to show?"

number = gets.chomp

puts "And how large would you like it?"

size = gets.chomp.to_i

lcd(size, number)
