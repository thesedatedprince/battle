require 'sinatra/base'
require './lib/player'


class Battle < Sinatra::Base
  enable :sessions

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_points = 100
    @player_2_points = 100
    @comment = session[:comment]
    erb (:play)
  end

  get '/' do
     erb (:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect to('/play')
  end

  post '/attack' do
    session[:comment] = "#{$player_2.name} has been struck"
    redirect to('/play')
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
