require 'pry-byebug'

class Knight
  def initialize
    @x = 0
    @y = 0
  end

  def knight_moves(startingPoint, destinationPoint, currentPath = [], coordinateQueue = [])
    @x = startingPoint[0]
    @y = startingPoint[1]

    if (currentPath.any?(startingPoint))
      
    elsif (@x < 0 || @x > 7 || @y < 0 || @y > 7)

    elsif (startingPoint == destinationPoint)

    else

    end
  end
end