# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

require 'mathn'

def triangle(a, b, c)
  if a <= 0 or b <= 0 or c <= 0
    raise TriangleError.new
  end

  if pass_pitagoras(a, b, c) == false
    raise TriangleError.new
  end

  if a == b and b == c
    return :equilateral
  elsif a == b or a == c or b == c 
    return :isosceles
  else
    return :scalene
  end
end

def pass_pitagoras(a, b, c)
    if a >= b and a >= c
        hipotenusa = a
        cateto1 = b
        cateto2 = c
    elsif b >= a and b >= c
        hipotenusa = b
        cateto1 = a
        cateto2 = c
    else 
        hipotenusa = c
        cateto1 = a
        cateto2 = b
    end

    # hipotenusa ^ 2
    hipotenusa.power!(2) < (cateto1 + cateto2).power!(2)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
