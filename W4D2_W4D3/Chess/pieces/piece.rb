class Piece

  #don't require relative board
  attr_reader :pos

  def initialize(color,board,pos)
    @color = color #white / black
    @board = board #reference to the board
    @pos = pos #
  end

  def to_s

  end
  
  def empty?
    @pos.empty? 
  end

  def valid_moves
    #validates a coordinate 
  end
  
  def pos=(val)
    #this logic below might actually go in each pieces class not here
    #am I hitting a piece
      #is it a piece I can attack.. if so this is the last position in that direction
    #am I still on the board

  end

  def symbol
    self.symbol
    #here to raise an error... without it we might get a no method error for this symbol class
    #something about how we can define it as emojis if we want
  end
  
  
  
end