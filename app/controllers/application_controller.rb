class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include PublicActivity::StoreController

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  helper_method :mailbox, :conversation

  def authenticate_user!
    redirect_to "/posts" unless current_user
  end
  
  def authenticate_employer!
    unless current_user && current_user.role_id == 1
      flash[:danger] = "Access Denied"
      redirect_to "/posts"
    end
  end
  
  def authenticate_freelancer!
    unless current_user && current_user.role_id == 2
      flash[:danger] = "Access Denied"
      redirect_to "/posts"
    end

  end

    
    private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

  protected
  
end
