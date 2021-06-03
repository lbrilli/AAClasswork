class Array
    
    def my_uniq
        final = []
        self.each do |ele|
            if !final.include?(ele)
                final << ele
            end
        end
        final
    end

    def two_sum
        final = []
        self.each_with_index do |el1, idx1|
            self.each_with_index do |el2, idx2|
                if idx2 > idx1 && el1 + el2 == 0
                    final << [idx1, idx2]
                end
            end
        end
        final
    end
   
    def my_transpose
        final = Array.new(self.length) { Array.new(self.length) }
        self.each_with_index do |el1, idx1|
            el1.each_with_index do |el2, idx2|
                final[idx2][idx1] = el2
            end
        end
        final
    end

end

