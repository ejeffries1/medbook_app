class MedicationController < ApplicationController

    get '/medications' do
        if logged_in?
            erb :'/medication/show'
        else
            redirect '/login'
        end
    end

    get '/medications/new' do
        if logged_in?
            erb :'/medication/add_med'
        else
            redirect '/login'
        end
    end

    post '/medications' do
        if !params[:name] == "" || !params[:strength] == "" || !params[:count] == ""
            binding.pry
            redirect '/medications/new'
        else
            @medication = Medication.create(params)
            current_user.medications << @medication
            current_user.save
            redirect "/medications/#{@medication.id}"
        end
    end

    get '/medications/:id' do
        if logged_in?
            @medication = Medication.find_by(params[:id])
            erb :'/medication/show'
        else
            redirect '/login'
        end
    end

    get '/medications/:id/edit' do
        if logged_in?
            @medication = Medication.find_by(id: params[:id])
            erb :'/medication/edit'
        else
            redirect '/login'
        end
    end

    patch '/medications/:id' do
        @medication = Medication.find_by_id(params[:id])
        @medication = params[:content]
        @medication.save
        redirect to "/medications/#{@medication.id}"
    end
    
end