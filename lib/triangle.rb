require 'pry'

class Triangle

  def initialize (one=0, two=0, three=0)
    @one = one
    @two = two
    @three = three
  end
  
  def kind
    # binding.pry
  if @one<=0 || @two<=0 || @three<=0
      raise TriangleError
  elsif @one+@two<=@three || @two+@three<=@one || @one+@three<=@two
      raise TriangleError
  elsif @one==@two && @two==@three
    :equilateral
  elsif @one==@two || @two==@three || @three==@one
    :isosceles
  elsif @one!=@two && @two!=@three && @three!=@one
    :scalene
    end
  end



  class TriangleError < StandardError
  end

end
