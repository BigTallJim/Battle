require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/play' do
    p params
    if params[:P1Attack] == "P1-Attack"
      Game.new.attack($player2)
    else
      Game.new.attack($player1)
    end
    @confirmation = "Attack successful"
    erb(:play)
  end


  run! if app_file == $0
end

# erb(:play)
