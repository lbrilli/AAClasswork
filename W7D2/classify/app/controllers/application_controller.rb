class ApplicationController < ActionController::Base
    helper_method :log_in_user, :current_user, :logout!

    def log_in_user!(user)
        session[:session_token] = user.reset_session_token!
        current_user = user
    end

    def current_user
        current_user ||= User.find_by(session_token: session[:session_token])
    end

    def logout!
        current_user.reset_session_token!
        session[:session_token] = nil
        current_user = nil
    end

end
