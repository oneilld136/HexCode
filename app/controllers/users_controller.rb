
class UsersController < ApplicationController

  # before_action :authorized?

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
     redirect_to user_path
   else
     redirect_to new_user_path
 end




 private

 def user_params
   params.require(:user).permit(:name, :zodiac_sign, :bio, :username , :password)
 end

end
end
