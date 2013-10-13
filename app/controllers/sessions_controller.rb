class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.authenticate(params[:username], params[:password])
    if @user
      log_in
    else
      @errors = "your username did not match your password"
      render "new"
    end
  end

  def destroy
    log_out
  end
end
