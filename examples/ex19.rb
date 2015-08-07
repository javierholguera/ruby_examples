
def cheese_and_crackers(cheese_count, boxes_of_crackers)
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of boxes_of_crackers!"
    puts "Man! That's enough for a party."
    puts "Get a blanket."
    puts #a blank line
end

puts "We can give numbers to the function directly: "
cheese_and_crackers(10, 20)

puts "OR we can use variables from our script: "
amount_of_cheese = 40
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too: "
cheese_and_crackers(10-5, 20 * 2)

puts "And we can combine the two, variables and math: "
cheese_and_crackers(amount_of_cheese + 10, amount_of_crackers * 100)

