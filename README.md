# Elixir Raindrops Conditional

convert a number into a string that contains raindrop sounds corresponding 
to certain potential factors. A factor is a number that evenly divides 
into another number, leaving no remainder. The simplest way to test 
if one number is a factor of another is to use the modulo operation.

## The rules of raindrops are that if a given number:
- has 3 as a factor, add 'Pling' to the result.
- has 5 as a factor, add 'Plang' to the result.
- has 7 as a factor, add 'Plong' to the result.
- does not have any of 3, 5, or 7 as a factor, the result should be the digits of the number.

## Examples:
- 28 has 7 as a factor, but not 3 or 5, so the result would be "Plong".
- 30 has both 3 and 5 as factors, but not 7, so the result would be "PlingPlang".
- 34 is not factored by 3, 5, or 7, so the result would be "34".

## Test
## $ mix test
Compiling 1 file (.ex)
Excluding tags: [:pending]

RainDropConditionalTest [test/romanumber_test.exs]
  * test 5. Prime in 3, 5, and 7 (excluded) [L#26]
  * test 3. Prime in 3 and 7 (excluded) [L#16]
  * test 4. Prime in 5 and 7 (excluded) [L#21]
  * test 2. Prime in 3 and 5 (excluded) [L#11]
  * test 1. Prime each 3, 5, and 7 (0.01ms) [L#4]

Finished in 0.02 seconds (0.00s async, 0.02s sync)
5 tests, 0 failures, 4 excluded


## $ mix test --include pending
