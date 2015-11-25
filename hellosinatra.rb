require 'sinatra'

def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour 
end

def greeting(name)
	current_hour = determine_current_hour
	if(current_hour > 3 && current_hour < 12)
		time = "morning"
	elsif (current_hour > 12 && current_hour < 18)
		time = "afternoon"
	elsif (current_hour > 18 || current_hour < 2)
		time = "evening"
	end
my_greeting = "Good #{time}, #{name.capitalize}!"
end

get '/' do
	name = params[:name]
	my_greeting = greeting

	"#{my_greeting}"
end


uts "What is your birthdate? Please enter the date in MMDDYYYY format."
	birthdate = gets

	birthpath_number = get_birthpath_number(birthdate)

	message = numerology_message(birthpath_number)

puts message