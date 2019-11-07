class UsersController < ApplicationController

    skip_before_action :require_login, :current_user

    def new
        @user = User.new
    end

    def show
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

end
