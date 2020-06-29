class UserController < ApplicationController

    get '/signup' do 
        erb :'/users/signup'
    end

    post '/signup' do 
        @users = Users.new(:email => params[:email],:password => params[:password],:name => params[:name])
		if @users.save
            redirect '/homepage'
        else 
            erb :'/users/signup'
        end
      end

      get '/user' do 
        erb :'/users/homepage'
      end

      post '/user' do 
        erb :'/users/homepage'
      end


    get '/login' do 
        erb :'/users/login'
    end

    post "/login" do
		users = Users.find_by(:username => params[:username])

			if users && users.authenticate(params[:password])
			  session[:users_id] = users.id
			  redirect '/homepage'
			else
			  redirect '/login'
			end
		end


    get '/homepage' do 
        erb :'/users/homepage'
    end

    get '/logout' do 
        session.clear 
        redirect '/users/login'
    end
  end
end