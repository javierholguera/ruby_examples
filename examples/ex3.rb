puts "I will now count my chickens:"

puts "Hens", 25 + 30 / 6
puts "Roosters", 100 - 25 * 3 % 4 # % is modulo operation. Multiplication takes precedent so this is equivalent to 100 - ((25*3)%4)

puts "Now I will count the eggs: "

# by default Ruby will use integers and round to most approximate number (1/4 = 0) unless introduce a floatig number
# in one of the operands of the number. Division takes precendent over modulo so this is equivalent to
# (3+2+1-5) + (4%2) - (1/4) + 6
puts 3 + 2 + 1 - 5 + 4 % 2 - 1.0 / 4  + 6 

puts "Is it true that 3 + 2 < 5 - 7"

puts 3 + 2 < 5 - 7

puts "What is 3 + 2", 3 + 2
puts "What is  5 - 7", 5 - 7

puts "Oh, that's why it is false"

puts "How about some more."

puts "Is it greater?", 5 > -2
puts "Is it greater or equal?", 5 >= -2
puts "Is it less or equal?", 5 <= -2