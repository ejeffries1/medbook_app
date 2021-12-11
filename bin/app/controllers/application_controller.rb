require './config/environment'

class ApplicationController < Sinatra::Base

    configure do
        enable :sessions
        set :session_secrets, "medbook_secret"
    end


    helpers do
        def logged_in?
            !!session[:user_id]
        end

        def current_user
            Patient.find(session[:user_id])
        end
    end
end