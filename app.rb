require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    sessions[:item] = params[:item]
    @sessions = sessions
    
      binding.pry
    erb :checkout
  end

end
