require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_one_name] = params[:player_one_name]
    session[:player_two_name] = params[:player_two_name]

    redirect '/play'
  end

  get '/play' do
   @player_one_name = session[:player_one_name]
   @player_two_name = session[:player_two_name]
   @player_one_HP = 100
   @player_two_HP = 100
   erb(:play)
  end

  get '/attack' do
   @player_one_name = session[:player_one_name]
   @player_two_name = session[:player_two_name]
   erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
