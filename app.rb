require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack_and_conf' do
    @game = $game
    @game.attack
    if @game.player_1.dead? || @game.player_2.dead?
      redirect '/game_over'
    end
    erb(:attack)
  end

  post '/switch_turn' do
    $game.switch_turn
    redirect '/play'
  end

  get '/game_over' do
    erb(:game_over)
  end

  run! if app_file == $0
end
