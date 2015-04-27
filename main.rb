require 'sinatra'
require 'mandrill'

get '/' do
	erb :home
end

get '/whyDeliver' do
	@title = "Why Deliver"
	erb :whyDeliver
end

get '/Plans' do
	@title = "Plans"
	erb :Plans
end

post '/Plans' do
	email = params["email"]
	user_message = params["message"]
	puts "sending email!!!"
	m = Mandrill::API.new
	message = {  
	:subject=> "New Plan Sign-Up",  
	:from_name=> "first_name",  
	:text=>"Congrats, another plan signed up",  
	:to=>[  
	   {  
	     :email=> "mjomaa@gmail.com",  
	     :name=> "Mazen J"  
	   }  
	 ],  
	 :html=>"<html><h1>Hi, how are you?</h1></html>",  
	 :from_email=>"email"  
	}  
	sending = m.messages.send message  
	puts sending
	redirect to ('/thanks')
end

get '/thanks' do
	erb :thanks
end

get '/benefitsOfWater' do
	@title = "Benefits of Water"
	erb :benefitsOfWater
end

get '/aboutUs' do
	@title = "About Us"
	erb :aboutUs
end