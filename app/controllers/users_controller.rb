class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find(params[:id])
    @answers = Answer.where('user_id=?',@user.id)
  end
end
