class LoginController < ApplicationController

  skip_before_action :authorized?, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:messages] = "Username or Password Doesn't Exist!"
      redirect_to '/'
    end
  end

  def destroy
    logout
  redirect_to '/'
end
end
