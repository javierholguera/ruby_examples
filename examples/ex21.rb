
def add(a, b)
    puts "ADDING #{a} + #{b}."
    a + b
end

def substract(a, b)
    puts "SUBSTRACTING #{a} - #{b}."
    a - b
end

def multiply(a, b)
    puts "MULTIPLYING #{a} * #{b}."
    a * b
end

def divide(a, b)
    puts "DIVING #{a} / #{b}."
    a / b
end

puts "Let's do some math with just functions."

age = add(30, 2)
heigth = substract(185, 2)
weigth = multiply(35, 2)
iq = divide(220, 2)

puts "Age #{age}, heigth #{heigth}, weigth #{weigth}, IQ #{iq}."

# A puzzle for the extra credit, type it in anyway
puts "Here is a puzzle."

what = add(age, substract(heigth, multiply(weigth, divide(iq, 2))))
puts "That becomes: #{what}. Can do you it by hand?"

