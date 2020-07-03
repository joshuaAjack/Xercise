class RoutinesController <  ApplicationController

    get '/routine' do 
        @routine = Routine.all 
        erb :'/routines/index'
    end 

    post '/routine' do 
        @rountine = Routine.new 
       title = params[:title]
        description = params[:description]
        sets = params [:sets]
        reps = params[:reps]
        rest = params[:rest]
        execise = params[:execise]
        duration = params[:duration]
        save
        redirect "/routines/#{routine.id}"
    end  

    get '/routines/new' do 
        erb :'/routines/new'
    end

    get '/routines/:id' do 
        @routine = Routine.find_by_id(params[:id])
        erb :'/routines/show'
    end 

    get '/routines/:id/edit' do 
        @rountine = Routine.find_by_id(params[:id])
        erb :edit
    end

    patch '/routines/:id' do 
            @rountine = Routine.find_by_id(params[:id])
            @routine.title = params[:title]
            @routine.description = params[:description]
            @routine.sets = params [:sets]
            @routine.reps = params[:reps]
            @routine.rest = params[:rest]
            @routine.execise = params[:execise]
            @routine.duration = params[:duration]
            @routine.save
            redirect "/routines/#{routine.id}"
        end 
    
        delete '/routines/:id/delete' do 
            @rountine = Routine.find_by_id(params[:id])
            @routine.delete
            redirect to '/routine'
        end
end