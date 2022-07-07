class Player
    def initialize
    
    end

    def get_move
            newarr = []
        while newarr.length < 2 
        puts "please enter the stack number (1-3) you want to move"
        init_stack = gets.chomp.to_i
            newarr << init_stack
        puts "enter its destination stack"
        end_stack = gets.chomp.to_i
            newarr << end_stack
        end 
       return newarr
    end
end
