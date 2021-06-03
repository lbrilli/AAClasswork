module Stepable

def execute
    moves = []
    curr_pos = self.pos 
    self.move_diffs.each do |move|
        x = move[0] + curr_pos[0]
        y = move[1] + curr_pos[1]
        curr_pos = [x,y]
        moves << curr_pos
    end
    moves 
end

    #moves method
    #should return an array of every possible position a piece can move to
    #it should only include empty spaces or where they can attack

    #priate move_diffs

end

class King < Piece
    include Stepable
    def symbol
        :♚
    end

    #protected move_diffs

    def move_diffs
        [[1,0],[0,1],[-1,0],[0,-1], 1,1],[1,-1],[-1,-1],[-1,1]]
    end

end