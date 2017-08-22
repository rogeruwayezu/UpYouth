class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    flash.now[:danger] = "Access Accepted"
    redirect_to "/posts" unless current_user
  end
  
  def authenticate_employer!
    unless current_user && current_user.user_employer
      flash[:danger] = "Access Denied"
      redirect_to "/"
    end
  end
  
  def authenticate_freelancer!
    unless current_user && current_user.user_freelancer
      flash[:danger] = "Access Denied"
      redirect_to "/"
    end

  end
end
