require 'pry-byebug'

class Knight
  def initialize
    @x = 0
    @y = 0
  end

  def self.knight_moves(startingPoint, destinationPoint, currentPath = [], coordinateQueue = [startingPoint])
    found = false
    while (!found)
      @x = startingPoint[0]
      @y = startingPoint[1]

      if (@x < 0 || @x > 7 || @y < 0 || @y > 7)
        coordinateQueue.shift
        startingPoint = coordinateQueue[0]
      elsif (startingPoint[0] == destinationPoint[0] && startingPoint[1] == destinationPoint[1])
        currentPath << coordinateQueue[0]
        currentPath = currentPath.flatten
        index = 0
        newPath = []

        while (index < currentPath.size)
          coordinate = [currentPath[index], currentPath[index + 1]]
          newPath.insert(0, coordinate)
          if (currentPath.size <= index + 1)
            return newPath
          end
          index += 2
        end

        puts "You made it in #{newPath.size - 1} moves! Here's your path:"
        newPath.each do |value|
          p value
        end

        return
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

Knight.knight_moves([3, 3], [4, 3])