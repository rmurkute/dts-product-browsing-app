class ApplicationController < ActionController::Base
  before_action :require_login

  def require_login
    unless session[:user_id] && User.find(session[:user_id])
      flash[:alert] = "Please login to the application before use."
      redirect_to login_path
    end
  end
end
