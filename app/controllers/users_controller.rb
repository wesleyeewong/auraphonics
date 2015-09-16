class UsersController < ApplicationController

before_filter :save_login_state, :only => [:new, :create]
	
  def new
  	@user = User.new
  end

  def create

  	@user = User.new(user_params)

  	if @user.save
  		redirect_to "/user/"+@user.id.to_s
  	else
  		flash[:notice] = "Form is invalid"
  		flash[:color] = "invalid"
  	end

  end

  def show
  	@user = User.find(params[:id])
  end

  private
  def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
