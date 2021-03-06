require './config/environment'

class ApplicationController < Sinatra::Base

    set :views, "app/views"
    enable :sessions
    set :session_secret, "medbook_secrets"

    configure do
    set :public_folder, 'public'
    set :views, "app/views"
    end

    get '/' do
        @user = current_user if logged_in?
        erb :index
    end


    helpers do
        def logged_in?
            !!session[:user_id]
        end

        def current_user
            User.find_by(id: session[:user_id])
        end
    end
end