require './config/environment'
  # register Sinatra::ActiveRecordExtension
  require_relative '../helpers/helpers'
class ApplicationController < Sinatra::Base
   register Sinatra::ActiveRecordExtension
 
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "TResource"
  end
    
  get "/" do
    erb :'/users/homepage'
  end

end