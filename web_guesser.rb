require 'sinatra'
require 'sinatra/reloader'
require_relative './guesser.rb'

  get '/' do
    play = Guesser.new(0,'')

    guess = params["guess"]
    message = play.guess?(guess)
    erb :index, :locals => {:message => message, :bgcolor => play.get_color}
  end
