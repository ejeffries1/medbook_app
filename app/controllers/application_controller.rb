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

    get '/signup' do
        if logged_in?
            redirect '/medications'
        else
            erb :'/patient/create_user'
        end
    end

    post '/signup' do
        if !params.values.all? {|v| !v.blank?}
            redirect to '/signup'
        else
            @user = User.create(params)
            session[:user_id] = @user.id
            redirect to '/medications'
        end
    end

    get '/login' do
       if logged_in?
        redirect '/medications'
       else
        erb :'/patient/login'
       end
    end

    post '/login' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
          end
          redirect '/medications'
    end





    helpers do
        def logged_in?
            !!session[:user_id]
        end

        def current_user
            User.find(session[:user_id])
        end
    end
end