require './config/environment'
  # register Sinatra::ActiveRecordExtension

class ApplicationController < Sinatra::Base
   register Sinatra::ActiveRecordExtension
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "TResource"
  end
    
  get "/" do
    erb :'/user/login'
  end

end
