require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_points = $player_1.points
    @player_2_points = $player_2.points
    @comment = session[:comment]
    erb (:play)
  end

  get '/' do
     erb (:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new
    redirect to('/play')
  end

  post '/attack' do
    $game.attack($player_2)
    session[:comment] = "#{$player_2.name} has been struck reducing points by 10 to #{$player_2.points}"
    redirect to('/play')
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
