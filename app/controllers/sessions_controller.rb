class SessionController < ApplicationController

    get '/sessions/login' do

        # the line of code below render the view page in app/views/sessions/login.erb
        erb :'sessions/login'
      end

      post '/login' do
        @user = User.find_by(email: params[:email], password: params[:password])
        if @user
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