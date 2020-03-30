require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  # INDEX Action
  get '/pokemons' do
    @pokemons = Pokemon.all

    erb :index
  end

  # SHOW Action
  get '/pokemons/:id' do
    @pokemon = Pokemon.find(params[:id])

    erb :show
  end


end
