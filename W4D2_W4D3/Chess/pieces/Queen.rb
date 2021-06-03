require_relative 'piece.rb'

module Slideable

def execute
    moves = []
    curr_pos = self.pos
    self.move_dirs.each do |move|
        until curr_pos != NullPiece || 
      x = move[0] + curr_pos[0]
      y = move[1] + curr_pos[1]
      curr_pos = [x,y]
    #   if curr_pos.valid_move?
        moves << curr_pos
    #   end
    end
    moves 
      #merge 
     #iterte through arr of constants, 
     # each pair, look at x add to x of curr_pos same for y
     #un 
        #conditional  b
end
 
  #take in start_pos, array addition with given move_dirs 
 #limits of board, no indx > 7 
 #cond. whether same color piece or not. 
 #space empty? 
end




class Queen < Piece
  include Slideable

  def symbol
    :♛
  end

  def move_dirs 
    [[1,0],[0,1],[-1,0],[0,-1],
    [1,1],[1,-1],[-1,-1],[-1,1]]    
  end
  
  

  private
  #move_dirs - private 
end





 #vert (x+1,y)
  #     (x-1,y)

  #hori (x, y+1) (x, y-1)
  
  #diag (x+1,y+1) && (x+1,y-1)
  #     (x-1,y-1) && (x-1,y+1)
  