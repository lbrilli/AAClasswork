require 'rspec'
require 'towers_game'

describe "#move" do
    subject(:arr) { [
    [1,2,3,4],
    [],
    [] 
    ] }
    context "moves one block(number) into another array"

    it "should take in two parameters" do
        expect{ arr.move }.to raise_error("invalid arguement, requires two parameters")
    end

    it "should grab a block" do
        arr2 = [
        [2,3,4],
        [],
        [] 
        ]
        expect(arr.move(0,2)).to eq(arr2)
    end

    it "should drop a block" do 
        arr3 = [
        [2,3,4],
        [],
        [1] 
        ]
        expect(arr.move(0,2)).to eq(arr3)
    end

    it "moves to a column that is on the board" do
        expect{ arr.move(0,5) }.to raise_error("you're off the board")
    end


end