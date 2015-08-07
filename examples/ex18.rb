
# this one is like your scripts with argv
def puts_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, arg2: #{arg2}."
end

# ok that *args is actually pointless, we can do this
def puts_two_again(arg1, arg2)
    puts "arg1: #{arg1}, arg2: #{arg2}."
end

# this just takes one argument
def puts_one(arg1)
    puts "arg1: #{arg1}"
end

# this takes no arguments
def puts_none
    puts "I got nothing."
end

puts_two("hola", "adios")
puts_two_again("hola again", "adios again")
puts_one("meh!")
puts_none


