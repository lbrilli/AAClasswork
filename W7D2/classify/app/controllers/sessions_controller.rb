class SessionsController < ApplicationController

    def new
        render :new
    end

    def create
        @user = User.find_by_credentials(:email, :password)
        render :new if @user.nil?
        log_in_user!(@user)
        redirect_to user_url
    end

    def destroy
        logout!
        render :destroy
    end

end
