class ApplicationController < ActionController::Base

    def current_user
        if session[:user_id].present?
            user = User.find_by(:id => sessionp[:user_id])
        end
    end
    
end
