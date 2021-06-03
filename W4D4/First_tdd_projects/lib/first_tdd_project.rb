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
    
end

