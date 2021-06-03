module Slideable 
  #vert (x+1,y)
  #     (x-1,y)

  #hori (x, y+1) (x, y-1)
  
  #diag (x+1,y+1) && (x+1,y-1)
  #     (x-1,y-1) && (x-1,y+1)


  #HORIZONTAL DIRS # 2d array constant 1,0, 0,1 etc.
  #same with diagonal dirs 
  
end




class Rook < Piece

  def symbol
    :♜
  end
  
  def move_dirs 
    [[1,0],[0,1],[-1,0],[0,-1]]
  end

  private
  #move_dirs - private
  #2D array of the directions a piece can move in
  #can slide across the board and continue moving to any position it chooses
  #decide a set of directions basically if we added the given array, 
  #that would be our new position
  #takes in the horizontal only, for example
end