require 'rspec'
require 'towers_game'

describe "#move" do
    subject(:arr) { [
    [1,2,3,4],
    [nil, nil, nil, nil],
    [nil, nil, nil, nil] 
    ] }
    let(:move) { [1,4] }
    context "moves one block(number) into another array"

    it "moves to a space that was nil" do
        expect(arr.move).to eq(nil)
    end


end