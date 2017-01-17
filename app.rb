require 'sinatra/base'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    params[:player_one_name] << session[:player_one_name].inspect
    params[:player_two_name] << session[:player_two_name].inspect

    redirect '/play'
  end

  get '/play' do
    params[:player_one_name]
    params[:player_two_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
