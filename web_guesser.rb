require 'sinatra'
require 'sinatra/reloader'
require_relative './guesser.rb'

play = Guesser.new(0,5,'')
set :bind ,'0.0.0.0'
  get '/' do
    play.guess = params["guess"]
    play.check_guess
    erb :index, :locals => {:message => play.get_message, :bgcolor => play.get_color,
      :guess => play.get_guess, :chances=> play.get_chances}
  end
