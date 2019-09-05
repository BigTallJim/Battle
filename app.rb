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
    p $player1
    @player1 = $player1.name
    @player2 = $player2.name
    @hp1 = 10
    @hp2 = 10
    erb(:play)
  end

  post '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @confirmation = "Attack successful"
    @hp1 = 10
    @hp2 = 10
    erb(:play)
  end


  run! if app_file == $0
end

# erb(:play)
