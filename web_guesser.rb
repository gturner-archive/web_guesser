require 'sinatra'
require 'sinatra/reloader'

NUMBER = rand(100)
message = ''

def check_guess(num)
	if num > NUMBER + 5
		"Way too high"
	elsif num > NUMBER
		"Too high!"
	elsif num < NUMBER - 5
		"Way too low"
	elsif num < NUMBER		
		"Too low!"
	elsif num == NUMBER
		"Just right! The secret number is #{NUMBER}"
	end
end

get '/' do
	guess = params['guess'].to_i
	message = check_guess(guess)
	erb :index, :locals => {:number => NUMBER, :message => message}
end
