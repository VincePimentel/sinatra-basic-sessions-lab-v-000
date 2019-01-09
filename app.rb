require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "hello"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    session[:item] = params[:name]

    erb :checkout
  end
end
