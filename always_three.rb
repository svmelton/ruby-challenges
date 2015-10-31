def always_three(number)

number = ((((number+5)*2)-4)/2) - number

end
puts 'Give me a number!'
user_number = gets.to_i


puts "Always " + always_three(user_number).to_s
