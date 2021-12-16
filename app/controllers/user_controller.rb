class UserController < ApplicationController

    get '/signup' do
        if logged_in?
          redirect to '/medications'
        else
          erb :'/patient/create_user'
        end
    end

    post '/signup' do
        @user = User.new(username: params[:username], password: params[:password])
        if @user.save
            session[:user_id] = @user.id
            redirect "/medications"
        else
            redirect to '/signup'
        end
    end

    get '/login' do
        if logged_in?
            redirect '/medications'
        else
            erb :'patient/login'
        end
    end

    post '/login' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect '/medications'
        else
            redirect '/'
        end
    end

    get '/logout' do
        if logged_in?
            session.clear
            redirect '/'
        end
    end
end