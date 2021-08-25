
Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".

# Running

`>bin/fizz_buzz_editor number`

 Example:
`>bin/fizz_buzz_editor 10`

# Sample

<strong>Input: 100</strong>

<strong>Output:</strong>

[1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz", "Fizz", 22, 23, "Fizz", "Buzz", 26, "Fizz", 28, 29, "FizzBuzz", 31, 32, "Fizz", 34, "Buzz", "Fizz", 37, 38, "Fizz", "Buzz", 41, "Fizz", 43, 44, "FizzBuzz", 46, 47, "Fizz", 49, "Buzz", "Fizz", 52, 53, "Fizz", "Buzz", 56, "Fizz", 58, 59, "FizzBuzz", 61, 62, "Fizz", 64, "Buzz", "Fizz", 67, 68, "Fizz", "Buzz", 71, "Fizz", 73, 74, "FizzBuzz", 76, 77, "Fizz", 79, "Buzz", "Fizz", 82, 83, "Fizz", "Buzz", 86, "Fizz", 88, 89, "FizzBuzz", 91, 92, "Fizz", 94, "Buzz", "Fizz", 97, 98, "Fizz", "Buzz"]

# Test

`>rspec spec/fizz_buzz_spec.rb`



<strong>Explanation:</strong>

Installation:
 1. Must have ruby (`rvm install ruby`)
 2. Go to project folder and run `bundle install`
 3. Go to project folder and run`>bin/fizz_buzz_editor number`

a) It is ruby project with main implementation in class `FizzBuzz` method `run`  

b) Added rspec for testing which is spec folder (can be run by command`rspec spec/fizz_buzz_spec.rb`)

c) Added rubocop linter for code analysing and code formatting (can be run by command for eg: `rubocop`)

d) It run on shell command by running the command  for example `bin/fizz_buzz_editor 10` which is in  `fizzbuzz_editor` file
