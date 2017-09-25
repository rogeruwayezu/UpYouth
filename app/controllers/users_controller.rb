class UsersController < ApplicationController

  def new
    @roles = Role.all
    render 'new.html.erb'
  end
  
  # def employer
  #   @roles = Role.all
  #   render 'employer.html.erb' 
  # end

  # def freelancer
  #   @roles = Role.all
  #   render 'freelancer.html.erb'
  # end


  def create

    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      role_id: params[:role_id])

    if user.save
         session[:user_id] = user.id
         flash[:success] = 'Successfully created account!'
         redirect_to '/posts'
       else
         flash[:warning] = 'Invalid email or password!'
         redirect_to '/signup'
    end
  end

  
end
