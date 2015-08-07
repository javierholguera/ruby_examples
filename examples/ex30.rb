
people = 30
cars = 40
buses = 40

if cars > people
    puts "We should take the cars."
elsif cars < people
    puts "We should not take the cars."
end

if buses > cars
    puts "That's too many buses"
elsif buses < cars
    puts "Maybe we could take the buses"
else 
    puts "We still can't decide"
end

if people > buses
    puts "Allright, let's just take the buses"
else 
    puts "Fine, let's stay at home then"
end