class SessionsController < ApplicationController
  skip_before_action :require_login, :only => [:login, :create, :logout]

  def new
  end

  def create
  	@user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to products_path
    else
      flash[:alert] = 'Invalid Email or Password. Please enter valid Email and Password.'
      redirect_to login_path
    end
  end

  def login
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "User is logged out successfully!"
    redirect_to login_path
  end
end
