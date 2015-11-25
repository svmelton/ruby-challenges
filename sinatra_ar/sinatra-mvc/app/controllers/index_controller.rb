
get '/:birthdate' do
  setup_index_view
end

get '/message/:birthpath_number' do
  birthpath_number = params[:birthpath_number].to_i
  @message = Person.numerology_message(birthpath_number)
  erb :index
end


get '/' do
   erb :form 
end


post '/' do
  birthdate = params[:birthdate].gsub("-", "")

  if Person.valid_birthdate(birthdate)
    birthpath_number = Person.get_birthpath_number(birthdate)
    redirect "/message/#{birthpath_number}"
  else
    @error = "Oops! You should enter a valid birthdate in the form of mmddyyyy. Try again!"
    erb :form    
  end
end    

def setup_index_view
  birthdate = params[:birthdate]
  birthpath_number = Person.get_birthpath_number(birthdate)
  @message = Person.numerology_message(birthpath_number)
  erb :index
end

