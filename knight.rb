class Knight
  def initialize
    @x = 0
    @y = 0
  end

  def knight_moves(startingPoint, destinationPoint, currentPath = [])
    @x = startingPoint[0]
    @y = startingPoint[1]

    if (currentPath.any?(startingPoint))
      return
    elsif (@x < 0 || @x > 7 || @y < 0 || @y > 7)
      return
    elsif (startingPoint == destinationPoint)
      return
    else
      # to be implemented
      return
    end
  end
end