require 'rspec'
require 'towers_game'

describe "#move" do
    subject(:game) { Game.new }

    let(:arr) { [
    [1,2,3,4],
    [],
    [] 
    ] }

    context "moves one block(number) into another array"

    it "should call Array#shift" do
        expect(arr.move).to receive(:shift).at_least(:once)
        arr[0].shift
    end

    it "should call Array#unshift" do
        expect(arr.move).to receive(:unshift).at_least(:once)
        arr.unshift
    end

    # it "should grab a block" do
    #     arr2 = [
    #     [2,3,4],
    #     [],
    #     [] 
    #     ]
    #     expect(game.move).to eq(arr2)
    # end

    # it "should drop a block" do 
    #     arr3 = [
    #     [2,3,4],
    #     [],
    #     [1] 
    #     ]
    #     expect(game.move).to eq(arr3)
    # end

    # it "moves to a column that is on the board" do
    #     expect{ game.move }.to raise_error("you're off the board")
    # end

end