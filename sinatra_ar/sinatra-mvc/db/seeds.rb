require 'faker'

#Use a range from 1 to 40 and the .each method to loop over our Person.create 40 times
(1..40).each do |n|
Person.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, 
	birthdate: Faker::Date.between(80.years.ago, 18.years.ago))

end
