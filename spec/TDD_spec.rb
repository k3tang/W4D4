require "TDD.rb"

describe "Array" do
    subject(:array) {[1, 2, 1, 3, 3]}
    describe "#my_uniq" do
        context "to remove duplicates" do
            before(:each) do
                expect(array).not_to receive(:uniq)
            end
            it "return uniques" do
                expect(array.my_uniq).to eq([1,2,3])
            end
        end
    end

    describe "#two_sum" do
        subject(:array_2) {[-1, 0, 2, -2, 1]}
        context "finds all pairs of positions where sum equals zero" do
            it "returns indexes" do
                expect(array_2.two_sum).to eq([[0,4],[2,3]])
            end
        end
    end

    describe "#my_transpose" do
        subject(:trans_arr) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
        context "transpose columns into rows" do
            before(:each) do
                expect(trans_arr).not_to receive(:transpose)
            end
            it "transpose el" do
                expect(trans_arr.my_transpose).to eq([[0,3,6],[1,4,7],[2,5,8]])
            end
        end
    end

    describe "#stock_picker" do
        subject(:arr) {[[0,5],[1,9],[2,7],[3,8]]}
        it "picks the best buy&sell date" do
            expect(arr.stock_picker).to eq([[0, 5], [1, 9]])
        end
    end
end
