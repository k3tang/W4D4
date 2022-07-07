require_relative 'player.rb'

class Board
    def initialize
        @board = Array.new(3){[]}
    end


    def populate(level)
        level.downto(0).each do |num|
            @board[0] << [num]
        end
        @board
    end
end

b = Board.new
p b.populate(8)
