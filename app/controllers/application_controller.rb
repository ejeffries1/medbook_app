require './config/environment'

class ApplicationController < Sinatra::Base

    configure do
    set :views, "app/views"
    enable :sessions
    set :session_secret, "medbook_secrets"
    #set :public_folder, 'public'
    end

    get '/' do
        erb :index
    end
end