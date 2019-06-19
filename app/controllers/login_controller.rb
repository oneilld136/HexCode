class LoginController < ApplicationController

  # before_action :authorized?

    def new
      @login = Login.new
    end

    def create
      @user = User.find_by(username:params[:username])
      if @user && @user.authenticate(params[:password])
        sessions[:user_id] =  @user.id
        redirect_to @user
      else
        flash[:messages] = "Incorrect Username or Password"
        redirect_to new_user_path
      end
    end



end
