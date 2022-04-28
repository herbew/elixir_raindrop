defmodule Sound do
  	defstruct drops: nil, noise: nil
end

defmodule RainDropConditional do
	@sounds [
    	%Sound{drops: 3, noise: "Pling"},
    	%Sound{drops: 5, noise: "Plang"},
    	%Sound{drops: 7, noise: "Plong"},
  	]

	@doc "Returns a string based on raindrop factors." <> \
	"- If the number contains 3 as a prime factor, output 'Pling'." <> \
	"- If the number contains 5 as a prime factor, output 'Plang'." <> \
	"- If the number contains 7 as a prime factor, output 'Plong'." <> \
	"- If the number does not contain 3, 5, or 7 as a prime factor," <> \
	"just pass the number's digits straight through."
  	
	@spec convert(pos_integer) :: String.t
  	def convert(number) do
    	result = @sounds
		|> Enum.filter(&(rem(number, &1.drops) == 0)) |> Enum.map(&(&1.noise))
		|> Enum.join
		String.length(result) > 0 && result || Integer.to_string(number)
  	end
end

            

