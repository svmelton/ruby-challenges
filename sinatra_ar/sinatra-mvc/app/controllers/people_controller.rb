get '/people' do
  @people = Person.all
  erb :"/people/index"
end

get '/people/new' do
  @person = Person.new
  erb :"/people/new"
end

post '/people' do
  if params[:birthdate].include?("-")
    birthdate = params[:birthdate]
  else
    birthdate = Date.strptime(params[:birthdate], "%m%d%Y")
  end
  
  person = Person.create(first_name: params[:first_name], last_name: params[:last_name], birthdate: birthdate)
  if @person.valid?
    @person.save
    redirect "/people/#{@person.id}"
  else
    @person.errors.full_messages.each do |message|
      @errors = "#{@errors} #{message}."
    end
    erb :"/people/new"
  end
end

get '/people/:id/edit' do
  @person = Person.find(params[:id])
  erb :"/people/edit"
end

put '/people/:id' do
  @person = Person.find(params[:id])
  @person.first_name = params[:first_name]
  @person.last_name = params[:last_name]
  @person.birthdate = params[:birthdate]
  if @person.valid?
    @person.save
    redirect "/people/#{@person.id}"
  else
    @person.errors.full_messages.each do |message|
      @errors = "#{@errors} #{message}."
    end
    erb :"/people/edit"    
  end
end

delete '/people/:id' do
  person = Person.find(params[:id])
  person.delete
  redirect "/people"
end
get '/people/:id' do
  @person = Person.find(params[:id])
  birthpath_number = Person.get_birthpath_number(@person.birthdate.strftime("%m%d%Y"))
  @message = Person.numerology_message(birthpath_number)  
  erb :"/people/show"
end

