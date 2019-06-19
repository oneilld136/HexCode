
class UsersController < ApplicationController
 skip_before_action :authorized?, only: [:new, :create]
  # before_action :authorized?

 def show
   @user = User.find(params[:id])
 end

 def new
   @user = User.new
 end


 def create
   @user = User.create(user_params)
   if @user.valid?
     session[:user_id] = @user.id
     redirect_to user_path
   else
     redirect_to new_user_path
 end

 def destroy
   @user = User.find_by(params[:id])
   @user.destroy 
 end




 private

 def user_params
   params.require(:user).permit(:name, :zodiac_sign, :bio, :username , :password)
 end

end
end
