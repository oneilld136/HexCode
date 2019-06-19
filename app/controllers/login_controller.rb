class LoginController < ApplicationController
  skip_before_action :authorized?, only: [:new, :create]
  # before_action :authorized?

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:messages] = "Incorrect username or password!"
      redirect_to '/'
    end
  end


end
