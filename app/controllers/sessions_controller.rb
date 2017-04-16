class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present? && params[:password].present?
      @user = User.find_by(name: params[:name])
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to homepage_path(@user)
      else
        redirect_to login_path
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end