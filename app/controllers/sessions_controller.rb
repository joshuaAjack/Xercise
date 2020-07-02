class SessionsController < ApplicationController

    get '/sessions/login' do
  
        erb :'sessions/login'
      end

      post '/login' do
        @user = User.find_by(:email => params[:email] )
        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
      redirect '/users/account'
    else
    redirect 'sessions/login'
    end
  end

  get '/sessions/logout' do
    session.clear
    redirect '/'
  end
 
  get '/users/account' do
    @user = User.find(session[:user_id]) 
    erb :'/users/account'
  end
end