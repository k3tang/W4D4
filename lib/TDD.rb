class Array
    def my_uniq
        self.tally.keys
    end   
    
    def two_sum
        newarr = []
        self.each.with_index do |ele1, idx1| 
            self.each.with_index do |ele2, idx2|
                miniarr = []
                if (idx2 > idx1) && (ele1 + ele2 == 0)
                    miniarr << idx1 << idx2
                    newarr << miniarr
                end 
            end 
        end 
        newarr
    end 

    def my_transpose 
        
    end 
end 

