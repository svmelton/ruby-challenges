
def fizz_buzz(number)

case 
	when number % 3 == 0 && number % 5 == 0 
	puts "FizzBuzz"

	when number % 3 == 0
	puts "Fizz"

	when number % 5 == 0
	puts "Buzz" 

	else
	puts number
end

end

counter = 1

while counter <= 100
	fizz_buzz(counter)
	counter += 1
end