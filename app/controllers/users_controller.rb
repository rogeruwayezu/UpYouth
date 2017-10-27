class UsersController < ApplicationController

  def index
    @users = User.where(role_id: 2)
  end

  def new
    @roles = Role.all
    @skills = Skill.all
    @categories = Category.all
    render 'new.html.erb'
  end
  
  def employer
    @roles = Role.all
    render 'employer.html.erb' 
  end

  def freelancer
    @roles = Role.all
    @skills = Skill.all
    @categories = Category.all
  end

  def freelancer_2
    @skills = Skill.all
    @categories = Category.all
  end

  def create

    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      role_id: params[:role_id])

    if @user.save
         session[:user_id] = @user.id
         flash[:success] = 'Successfully created account!'
         redirect_to '/users/user_id/edit'
       else
         flash[:warning] = 'Invalid email or password!'
         redirect_to '/signup'
    end
  end

  def edit
    @skills = Skill.all
    @categories = Category.all
    @user = current_user
  end

  def update
    @user = User.find_by(id: params[:id])
    bodies = params[:bodies]

    bodies.each do |body|
      @user.assign_attributes(category_id: body[:category_id], skill_id: body[:skill_id])
      if @user.save
        flash[:success] = "User Updated"
        redirect_to "/profiles/new"
      else
        render :edit
      end
    end    
   
  end


  def search
    search_query = params[:search_input]
    @users = User.where("first_name LIKE ? OR last_name LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @users.empty?
      flash[:info] = "No freelancer found in search"
    end
    render :index
  end  
end
