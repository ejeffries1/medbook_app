class MedicationController < ApplicationController

    get '/medications' do
        if logged_in?
            @user = User.find_by(id: session[:user_id])
            @medications = Medication.all
            erb :'/medication/show'
        else
            redirect '/login'
        end
    end

    get '/medications/new' do
        if logged_in?
            @user = current_user
            erb :'/medication/add_med'
        else
            redirect '/login'
        end
    end

    post '/medications' do
        if params[:name] = "" || params[:strength] = "" || params[:count] = ""
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

    patch "/medications/:id" do
        @medication = Medication.find_by(params[:id])

        @medication.update(params.select{|m| m=="name" || m=="strength" || m=="quantity"})
            #binding.pry
        redirect to "/medications/#{@medication.id}"
    end

    post '/medications/:id/delete' do
        @medication = Medication.find_by(params[:id])
        @medication.destroy
    end
    
end