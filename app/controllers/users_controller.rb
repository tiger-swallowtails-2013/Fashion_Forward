class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @answers = @user.answers
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in
    else
      render :new
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
