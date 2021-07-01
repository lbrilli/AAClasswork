class ApplicationController < ActionController::Base
    
    helper_method :current_user
    helper_method :logged_in?

    def login(user) #
        session[:session_token] = user.reset_session_token!
        @current_user = user
    end

    def current_user #find user by session token
        #session[:session_token]
        return nil unless session[:session_token]
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def logged_in?
        !!current_user
    end

    def logout!
        current_user.reset_session_token! unless nil
        session[:session_token] = nil

    end


end