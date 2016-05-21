require_relative "../lib/stringcalculator"
require "spec_helper"

describe "StringCalculator" do
	before :each 
		calculator = StringCalculator.new
	end
	it "returns 0 for an empty string" do
		expect(calculator.add("")).to eq(0)
	end

	it "returns 3 just that number" do
		expect(calculator.add("3")).to eq(3)
	end
end