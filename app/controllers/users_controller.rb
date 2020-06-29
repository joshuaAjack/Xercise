class UsersController < ApplicationController
   
  get '/login' do 
    erb :'/login/login'
  end

  post "/login" do
    user = user.find_by(:username => params[:username])

			if user && user.authenticate(params[:password])
			  session[:user_id] = user.id
			  redirect '/account'
			else
			  redirect 'login/login'
			end
  end

  get '/signup' do 
    # redirect '/users/account' if is_logged_in?
    erb :'/forms/signup'
   end

   post '/signup' do 
    @users = Users.create(name: params[:name], email: params[:email], password: params[:password])
    @users.save
    session[:users_id] = @users.id
    puts params

    redirect '/login'
  end



  get '/users/logout' do
    session.clear
    redirect '/'
  end

  get '/account' do
    @users = Users.find(session[:user_id])
    erb :'/users/account'
  end

  post '/account' do 
    erb :'/users/account'
  end
    
end