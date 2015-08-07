
class Animal
end

class Dog < Animal
    def initialize(name)
        @name = name
    end
end

class Cat < Animal
    def initialize(name)
        @name = name
    end
end

class Person
    attr_accessor :pet

    def initialize(name)
        @name = name
        @pet = nil
    end
end

class Employee < Person
    def initialize(name, salary)
        super(name)
        @salary = salary
    end
end

class Fish
    def Hello
        puts "Fish says hello!"
    end

    def Goodbye
        puts "Fish says goodbye!"
    end
end

class Salmon < Fish
    def Hello
        super
        puts "Salmon says hello!"
        super.Goodbye
    end
end

class Halibut < Fish
    def Hello
        super
        puts "Halibut says hello!"
        super.Goodbye
    end
end

rover = Dog.new("Rover")
satan = Cat.new("Satan")
mary = Person.new("Mary")
mary.pet = satan
frank = Employee.new("Fran", 120000)
frank.pet = rover
flipper = Fish.new
crouse = Salmon.new
harry = Halibut.new

flipper.Hello
crouse.Hello
harry.Hello
