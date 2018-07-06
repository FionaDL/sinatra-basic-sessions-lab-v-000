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
    @sessions = session
    @new_item = params[:item]
    @session[:item] = @new_item
      binding.pry
    erb :checkout
  end

end
