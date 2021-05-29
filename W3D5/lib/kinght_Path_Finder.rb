class KnightPathFinder

    
    def self.valid_moves(pos) #2,1
        x, y = pos


        #if x <= 6 we can add or subtract 2
        #if x >= 2 we can add or subtract 2
        #if y >= 1 we can add or subtract 1
        #if y <= 7 we can add or subtract 1
        


        #if the move adds / subtracts 2 from one index and add / subtracts 1 from the other index
        #we would know this based on the difference between current pos and passed in position

    end

    def initialize(start) 
        @root_node = PolyTreeNode.new(start)
        @considered_positions = [start]
        #call build_move_tree
    end

    def build_move_tree
    end

    def find_path

    end


end