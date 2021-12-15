class UserController < ApplicationController

    get '/signup' do
        if logged_in?
          redirect to '/medications'
        else
          erb :'/users/create_user'
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

    get 'login' do
        if logged_in?
            redirect '/medications'
        else
            redirect '/login'
        end
    end

    post '/login' do
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect '/medications'
        else
            redirect '/index'
        end
    end

    get '/logout' do
        if logged_in?
            sessions.clear
            redirect '/index'
        end
    end
end