class UsersController < ApplicationController
    
    def new
        render :new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save!
            log_in_user!(@user)
            render :show
        else
            raise "user not created"
            render :new
        end
    end

    def show
        render :show
    end

    def user_params
        params.require(:user).permit(:email, :password) #make sure password param allowed?
    end

end
