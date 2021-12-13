class MedicationController < ApplicationController


    get '/medications' do
        if logged_in?
            @user = current_user
            @medications = Medication.all
            erb :'medication/medications'
        else
            redirect '/login'
        end
    end
end