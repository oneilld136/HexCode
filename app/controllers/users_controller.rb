
class UsersController < ApplicationController

  require 'Lunartic'
 skip_before_action :authorized?, only: [:new, :create, :welcome]
  # before_action :authorized?

 def show
   @spells = Spell.all
   @user = User.find(params[:id])
   if @user.id != @current_user.id
     redirect_to @current_user
   end
 end

 def new
   @user = User.new
 end


 def create
     @user = User.create(user_params)
     if @user.valid?
       session[:user_id] = @user.id
       redirect_to @user
     else
       redirect_to new_user_path
   end
end
#  def welcome
#  end

 def destroy
  @user = User.find(params[:id])
  @user.destroy
  session[:user_id] =  nil
  redirect_to '/'
end


def herbs
end 
 private

 def user_params
   params.require(:user).permit(:name, :zodiac_sign, :bio, :username , :password)
 end
end
