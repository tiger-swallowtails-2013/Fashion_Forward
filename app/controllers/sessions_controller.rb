class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(username: params[:username])
      .try(:authenticate, params[:password])
    if @user
      log_in
    else
      @errors = "your username did not match your password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end