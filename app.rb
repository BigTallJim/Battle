require 'sinatra/base'
require './lib/player'

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
    $player2.reduce_hp(10)
    @confirmation = "Attack successful"
    erb(:play)
  end


  run! if app_file == $0
end

# erb(:play)
