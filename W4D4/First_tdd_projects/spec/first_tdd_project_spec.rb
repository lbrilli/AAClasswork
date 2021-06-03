require 'rspec'
require 'first_tdd_project'

describe "#my_uniq" do
    subject(:arr) {[1, 2, 1, 3, 3]}
    context "is called on array" do

        it "removes duplicates from array" do
            expect(arr.my_uniq).to eq([1, 2, 3])
        end
        
    end
end