require 'sinatra'
require 'sinatra/reloader'

def secret_number
    rand(100)
end

secret = secret_number
get '/' do
    "The SECRET number is #{secret}\n"
end
