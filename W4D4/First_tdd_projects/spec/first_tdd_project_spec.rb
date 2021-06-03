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
    context "finds pairs of positions that sum to zero" do

        it "will return a new 2D array of index pairs" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end

        it "should return a new array" do
            expect(arr.two_sum).to_not eq(arr)
        end

        it "should return index from smallest to largest index" do
            expect(arr.two_sum).to_not eq([[2, 3], [0, 4]])
        end
    end
end

describe "#my_transpose" do
    subject(:arr) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
        ]}
    context "will convert row-oriented array to column-oriented array" do

        it "will return a new 2D array" do 
            expect(arr.my_transpose).to_not eq(arr)
        end

        it "will return rows and columns switched" do
            expect(arr.my_transpose).to eq(cols = [
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
            ])
        end
    end
end

describe "#stock_picker" do
    subject(:arr) { [500, 100, 200, 600, 300, 400, 700] }
    context "will return the days (indices) that would yield the most profit"
    
    it "will return a one pair of days" do
        expect(arr.stock_picker).to eq([1,6])
    end

    it "will return a new array" do
        expect(arr.stock_picker).to_not eq(arr)
    end
end

