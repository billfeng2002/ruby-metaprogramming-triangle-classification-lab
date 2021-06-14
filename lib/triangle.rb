class Triangle
  # write code here
  def initialize(side1, side2, side3)
    if(side1<=0 || side2<=0 || side3<=0 || side1+side2 <= side3 || side2+side3 <=side1 || side1+side3<= side2)
      @kind=:invalid
      return
    end
    if(side1==side2 && side2==side3)
      @kind=:equilateral
    elsif side1==side2 || side2 == side3 || side1 == side3
      @kind=:isosceles
    else
      @kind=:scalene
    end
  end

  def kind
    if (@kind==:invalid)
      raise TriangleError
    end
    return @kind
  end
  class TriangleError < StandardError
    puts "The side lengths provided result in an invalid triangle."
  end
end
