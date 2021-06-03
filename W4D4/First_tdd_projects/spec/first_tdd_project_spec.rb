require 'rspec'
require 'first_tdd_project'

describe "#my_uniq" do
    subject(:arr) {[1, 2, 1, 3, 3]}
    context "is called on array" do

        it "removes duplicates from array" do
            expect(arr.my_uniq).to eq([1, 2, 3])
        end

        it "should return a new array" do
            expect(arr.my_uniq).to_not eq(arr)
        end

        it "should take in an array" do
            expect(arr).is_a?(Array)
        end
    end
end

describe "#two_sum" do
    subject(:arr) {[-1, 0, 2, -2, 1]}
    context "finds pairs of positions that sum to zero"
end