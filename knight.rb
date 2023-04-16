require 'pry-byebug'

class Knight
  def initialize
    @x = 0
    @y = 0
  end

  def knight_moves(startingPoint, destinationPoint, currentPath = [], coordinateQueue = [startingPoint])
    found = false
    while (!found)
      @x = startingPoint[0]
      @y = startingPoint[1]

      if (@x < 0 || @x > 7 || @y < 0 || @y > 7)
        coordinateQueue.shift
        startingPoint = coordinateQueue[0]
      elsif (startingPoint[0] == destinationPoint[0] && startingPoint[1] == destinationPoint[1])
        found = true
        currentPath << coordinateQueue[0]
        return currentPath
      else
        coordinateQueue.shift

        coordinateQueue << [@x + 1, @y + 2, startingPoint]
        coordinateQueue << [@x + 2, @y + 1, startingPoint]
        coordinateQueue << [@x - 1, @y + 2, startingPoint]
        coordinateQueue << [@x - 2, @y + 1, startingPoint]

        coordinateQueue << [@x + 1, @y - 2, startingPoint]
        coordinateQueue << [@x + 2, @y - 1, startingPoint]
        coordinateQueue << [@x - 1, @y - 2, startingPoint]
        coordinateQueue << [@x - 2, @y - 1, startingPoint]

        startingPoint = coordinateQueue[0]
      end
    end
  end
end

knight = Knight.new

binding.pry
p knight.knight_moves([3, 3], [4, 3])