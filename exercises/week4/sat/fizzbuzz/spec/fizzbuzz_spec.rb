require_relative "../lib/fizzbuzz"
require "spec_helper"

describe "FizzBuzz" do
	before :each do
		@tony = FizzBuzz.new
	end
	it "returns 'Fizz' if the number is divisible by 3" do
		expect(@tony.fizz_buzz?(6)).to eq("Fizz")
	end

	it "returns 'Buzz' if the number is divisible by 5" do
		expect(@tony.fizz_buzz?(10)).to eq("Buzz")
	end

	it "returns 'FizzBuzz' if the number is divisible by 3 and 5" do
		expect(@tony.fizz_buzz?(30)).to eq("FizzBuzz")
	end

	it "returns the number if it isn't divisible by 3 or 5" do
		expect(@tony.fizz_buzz?(4)).to eq(4)
	end

end