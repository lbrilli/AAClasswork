module Stepable

#vert (x+1,y)
#     (x-1,y)

#hori (x, y+1) (x, y-1)

    #moves method

    #priate move_diffs

end

class Knight < Piece
    def symbol
        :♞
    end
    #symbol method

    #protected move_diffs

    [1,0],[0,1],[-1,0],[0,-1]

end