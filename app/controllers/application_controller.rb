class ApplicationController < ActionController::Base

    helper_method :current_user, :require_login, :logged_in?
    before_action :current_user, :require_login

    def current_user
        @current_user ||= User.find_by(:id => session[:user_id]) if session[:user_id].present?
    end
    

    def require_login
        unless current_user
            redirect_to root_path
        end
    end

    def logged_in?
        session[:user_id]
    end

end
