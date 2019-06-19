class LoginController < ApplicationController

  skip_before_action :authorized?, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    end
  end
end
