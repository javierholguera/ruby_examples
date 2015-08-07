name = 'Javier Holguera'
age = 32 #not a lie
height = 183 #cms
weight = 69 #kg
eyes = 'Brown'
teeth = 'White?'
hair = 'Dark'

puts "Let's talk about %s." % name
puts "He's %d cms tall." % height
puts "He's %d kgs heavy." % weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s, depending on coffee." % teeth

# this line is tricky
puts "If I add %d, %d and %d, I get %d." % [age, height, weight, age + height + weight]