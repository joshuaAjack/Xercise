class UsersController < ApplicationController

  get '/forms/signup' do 
    # redirect '/users/account' if is_logged_in?
    erb :'/forms/signup'
   end

   post '/signup' do 
    @user = Users.new
    @user.email = params[:email]
    @user.password = params[:password]

    if @user.save 
    redirect '/sessions/login'
    else 
      redirect '/forms/signup'
  end
 end
end