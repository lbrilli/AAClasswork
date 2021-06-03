module Slideable

  #diag (x+1,y+1) && (x+1,y-1)
  #     (x-1,y-1) && (x-1,y+1)
  
end




class Bishop < Piece

  def symbol
    :♝
  end

  private
  #move_dirs - private 

  [1,1],[1,-1],[-1,-1],[-1,1]] 
end