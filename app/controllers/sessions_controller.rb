class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params.dig(:session, :email))

    if @user&.authenticate(params.dig(:session, :password))
      log_in(@user)

      redirect_to '/'
    else
      render :new
    end
  end

  def destroy
    log_out if @current_user.present?
    redirect_to '/'
  end

end
