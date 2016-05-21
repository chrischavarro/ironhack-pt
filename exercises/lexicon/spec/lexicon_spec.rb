require_relative "../lib/lexicon"
require "spec_helper"

describe "Lexiconomitron" do 
	before :each do
		@lexi = Lexiconomitron.new
	end

	describe "#eat_t" do

		it "removes every letter t from the input" do
			expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
		end
	end

	describe "shazam" do

		it "reverses, returns first and last, and eats t" do
			expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
		end
	end

	describe "oompa loompa" do

		it "Takes short words" do
			expect(@lexi.oompa_loompa(["if","you","wanna","be","my","lover"])).to eq(["if","you","be","my"])
		end
	end
end


