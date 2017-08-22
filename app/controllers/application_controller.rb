class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
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
