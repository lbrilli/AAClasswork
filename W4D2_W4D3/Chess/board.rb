require_relative "pieces/pieces.rb"

class Board

  attr_reader :rows,:piece

  def initialize
    @rows = Array.new(8) {Array.new(8)}
    # @null_piece = NullPiece.new 
    @piece = Piece.new(:B,"piece",[0,0])
  end

  def [](pos)
    row,column = pos
    @rows[row][column]
  end
  
  def []=(pos,val)
    row,column = pos
    @rows[row][column]= val
  end

  def move_piece(start_pos,end_pos)

    raise "Start position empty" if self[start_pos].nil? #the alterntative is start_pos == @null_piece (empty assumes empty method checks for null piece)

    if valid_pos?(end_pos)
      symbol = self[start_pos]
      self[start_pos] = nil #==> update to null piece later 
      self[end_pos] = symbol
    else
      raise "Not a valid move"
    end
    
  end

  def valid_pos?(pos)
    true  
  end
  
end