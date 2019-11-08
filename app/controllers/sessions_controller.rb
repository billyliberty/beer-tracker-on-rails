class SessionsController < ApplicationController

    skip_before_action :require_login

    def new
        @user = User.new
    end

    def create
        if authentication_hash = request.env["omniauth.auth"]
            @user = User.find_or_create_by_omniauth(authentication_hash)
            sessions[:user_id] = @user.id
            redirect_to @user
        else
            @user = User.find_by(email: params[:user][:email])
                if @user && @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id 
                redirect_to @user
            else
                redirect_to '/signin'
            end
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end
