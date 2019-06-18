
class UsersController < ApplicationController

 def index
   @users = User.all
 end

 def show
   @user = User.find(params[:id])
 end

 def new
   @user = User.new
 end

 def create
   @user = User.create(user_params)
   if @user.valid?
     redirect_to users_path
   else
     redirect_to new_user_path
 end


 private

 def user_params
   params.require(:user).permit(:name, :zodiac_sign, :bio)
 end

end
end 
