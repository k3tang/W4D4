class Player
    def initialize
        @player = player
    end

    def get_move
        puts "please enter the stack number you want to move"
        init_stack = gets.chomp.to_i
        puts "enter its destination stack"
        end_stack = gets.chomp.to_i
        return [init_stack,end_stack]
    end
end
