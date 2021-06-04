# [
#     [1,2,3,4]
#     []
#     []
# ]

#object is to move array from line 2 to line 4

#move
#can only shift off the top
#move is supposed to grab / pick up from idx and drop in idx
#move takes two parameters ... pick up and drop
#shift from grab
#unshift onto drop
#max array length is 4


#won?
#is the final subarray equal to [1,2,3,4] 

class Game

    def initialize
        @board = [
        [1,2,3,4],
        [],
        []
        ]
    end

    def move
        puts "enter the pile to select the disk from, a space, and where to place it"
        input = gets.chomp

        array = input.split(" ")
        array.map! { |ele| ele.to_i }
        block = @board[array[0]].shift
        @board[array[1]].unshift(block)
    end

end
# test = Game.new
# test.move