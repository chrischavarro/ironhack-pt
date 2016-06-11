require_relative "../lib/fizzbuzz"
require "spec_helper"

describe "FizzBuzz" do
	before :each do
		@tony = FizzBuzz.new
	end
	it "returns 'Fizz' if the number is divisible by 3" do
		expect(@tony.fizz_buzz?(6)).to eq(1)
	end

	it "returns 'Buzz' if the number is divisible by 5" do
		expect(@tony.fizz_buzz?(10)).to eq("Buzz")
	end

	it "returns 'FizzBuzz' if the number is divisible by 3 and 5" do
		expect(@tony.fizz_buzz?(30)).to eq("FizzBuzz")
	end

	it "returns the number if it isn't divisible by 3 or 5" do
		expect(@tony.fizz_buzz?(46)).to eq(46)
	end

	describe "#fizz_printer" do
		it "should count from 1 to a number, and then return a new array with that"
		expect(@buzzer.fizz_printer(100).length).to eq(100)
	end

	it "should replace multiplies of 3 with fizz" do
		expect(@buzzer.fizz_printer(100)[2]).to eq("Fizz")
	end

	it "Should replace multiples of 5 with buzz" do
		expect(@buzzer.fizz_printer(100)[4]).to eq("Buzz")
	end

	it "should replace multiples of 5 and 3 with fizzbuzz" do
		expect(@buzzer.fizz_printer(100)[14]).to eq("FizzBuzz")
	end

end

