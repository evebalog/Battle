require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

enable :sessions
set :session_secret, "here be dragons"
run! if app_file == $0

get '/' do
  erb(:index)
end

post '/names' do
  $player1 = Player.new(params[:player1_name])
  $player2 = Player.new(params[:player2_name])
  redirect '/play'
end

get '/play' do
  @player1_name = $player1.name
  @player2_name = $player2.name
  @player1_hitpoints = $player1.hitpoints
  @player2_hitpoints = $player2.hitpoints
  erb(:play)
end

get '/attack' do
  @player1_name = $player1.name
  @player2_name = $player2.name
  $player1.attack($player2)
  @player2_hitpoints = $player2.hitpoints
  erb(:attack)
end

end
