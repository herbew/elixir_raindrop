defmodule RainDropConditionalTest do
    use ExUnit.Case
	
	test "1. Prime each 3, 5, and 7" do
		assert RainDropConditional.convert(3) == "Pling"
		assert RainDropConditional.convert(5) == "Plang"
		assert RainDropConditional.convert(7) == "Plong"
	end #test "1. Prime each 3, 5, and 7" do
	
	@tag :pending
	test "2. Prime in 3 and 5" do
		assert RainDropConditional.convert(15) == "PlingPlang"
	end #test "2. Prime in 3 and 5" do
	
	@tag :pending
	test "3. Prime in 3 and 7" do
		assert RainDropConditional.convert(21) == "PlingPlong"
	end #test "3. Prime in 3 and 7" do
	
	@tag :pending
	test "4. Prime in 5 and 7" do
		assert RainDropConditional.convert(35) == "PlangPlong"
	end #test "4. Prime in 5 and 7" do
	
	@tag :pending
	test "5. Prime in 3, 5, and 7" do
		assert RainDropConditional.convert(105) == "PlingPlangPlong"
	end #test "5. Prime in 3, 5, and 7" do
  
    
end