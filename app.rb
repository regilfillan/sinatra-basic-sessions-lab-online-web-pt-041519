require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'flatiron'
  end
  
  get "/" do
    erb :index  
  end
  
  post "/checkout" do 
    session[:item]= params
    erb :checkout
  end
  
end