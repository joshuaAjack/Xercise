class UsersController < ApplicationController

  get '/forms/signup' do 
    # redirect '/users/account' if is_logged_in?
    erb :'/forms/signup'
   end

   post '/signup' do 
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    @user.save
    session[:user_id] = @user.id
    redirect 'users/account'
  end
end