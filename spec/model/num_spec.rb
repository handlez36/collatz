require 'rails_helper'

RSpec.describe "Num", type: :model do
    it "returns true if an event number is even" do
        @num = Num.create
        num = 4

        expect(@num.is_even?(num)).to be_truthy
    end

    it "returns true if an odd number is odd" do
        @num = Num.create
        num = 5

        expect(@num.is_odd?(num)).to be_truthy
    end

    it "returns number divided by 2 if number is even" do
        @num = Num.create
        num = 4

        expect(@num.next_number(num)).to eq(2)
    end

    it "returns number mulitpled by 3, plus 1 if number is odd" do
        @num = Num.create(number: 5)
        num_to_test = 5

        expect(@num.next_number(num_to_test)).to eq(16)
    end

    it "calculates collatz sequence down to 1 given a starting number of 13" do
        @num = Num.create(number: 13)
        @collatz = @num.get_collatz_sequence

        expected_response = "13 > 40 > 20 > 10 > 5 > 16 > 8 > 4 > 2 > 1"

        expect(@collatz).to eq(expected_response)
    end
end