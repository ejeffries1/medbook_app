require './config/environment'

class ApplicationController < Sinatra::Base
  
    configure do
    set :views, "app/views"
    enable :sessions
    set :session_secret, "medbook_secrets"
    set :public_folder, 'public'
    end

    get '/' do
        erb :index
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