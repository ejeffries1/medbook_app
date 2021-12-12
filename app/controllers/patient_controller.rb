class PatientController < ApplicationController

    get '/signup' do
        if logged_in?
            redirect '/medications'
        else
            erb :'/patient/create_patient'
        end
    end
end