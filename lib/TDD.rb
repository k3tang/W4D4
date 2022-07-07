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
        big_arr = []
        self.length.times do |i|
            new_arr = []
            self.each do |sub_arr|
                new_arr << sub_arr[i]
            end
            big_arr << new_arr
        end
        big_arr
    end

    #buy has to happen after sell

    def stock_picker
        prices = self.transpose[1]
        max_idx = prices.index(prices.max)
        buy_arr = self[0...max_idx]
        min_idx =buy_arr.index(buy_arr.min)

        prices = self.transpose[1]
        new_arr = []
        self.each.with_index do |sub_arr,i|
            if sub_arr[0] == min_idx || sub_arr[0] == max_idx
                new_arr << sub_arr
            end
        end
        new_arr
    end
end




arr = [[0,5],[1,9],[2,7],[3,8]]
p arr.stock_picker
