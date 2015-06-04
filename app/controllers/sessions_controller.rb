class SessionsController < ApplicationController
  def new
    redirect_to somewhere if logged_in?
  end

  def create
    user = User.find_by(email: params[:email])
    login_as(user.id)
  end

  def destroy
    if logged_in?
      log_out
    end
    redirect_to '/'
  end
end
