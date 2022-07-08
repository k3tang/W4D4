require_relative 'board.rb'

class Game
    attr_reader :board

    def initialize
        @board = Board.new
    end

    def run_game
        p "List the number of disks you wanna begin with"
        level = gets.chomp.to_i
        board.populate(level)
        until board.win?
            p board.move_disk
              board.display
        end
    end
end

game = Game.new
game.run_game
