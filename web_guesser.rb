require 'sinatra'
require 'sinatra/reloader'

randNum = rand(100)

get '/' do
	"The SECRET NUMBER is #{randNum}"
end

