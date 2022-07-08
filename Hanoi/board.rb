require_relative 'player.rb'

class Board
    attr_reader :stacks, :player
    def initialize
        @stacks = Array.new(3){[]}
        @player = Player.new

    end

    def populate(level)
        level.downto(1).each do |num|
            stacks[0] << num
        end
        stacks
    end

    def display
       stacks.each {|subarr| p subarr}
    end

    def move_disk
    begin
        pos = player.get_move
        init_stack = pos[0] - 1

        raise "not valid inital stack position" if init_stack > 3
        raise "empty stack, try again" if stacks[init_stack].empty?
        pop_disk = stacks[init_stack].pop
        end_stack = pos[1] - 1
            unless (stacks[end_stack].empty? || pop_disk > stacks[end_stack][-1])
                raise "this disk is too big"
            end
        stacks[end_stack] << pop_disk
    rescue RuntimeError
                puts "Try Again!"

        end
    end

    def win?
        newarr = []
        (1..8).reverse_each do |i|
            newarr << i
        end

        if stacks[2] == newarr
            p "You won!"
            return true
        else
            return false
        end
    end


end
