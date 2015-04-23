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