class ApplicationsController < ApplicationController

  def index
    
    if current_user && current_user.role.id == 1 
      @posts = current_user.posts
      @posts.each do |post|
        @applications = post.applications
      end
    else
      @applications = current_user.applications
      @posts = []
      @applications.each do |application|
        @posts << application.post
      end
    end

  end

  def show
    @application = Application.find_by(id: params[:id])
  end

  def new
    @application = Application.new
    @posts = Post.all
    @post = Post.find_by(id: params[:post_id])
  end

  def create
    @application = Application.new ({
      
      user_id: params[:user_id],
      duration: params[:duration],
      cover_letter: params[:cover_letter],
      post_id: params[:post_id]})
    if @application.save
      flash[:success] = "Job Application Succesfully Submited"
      redirect_to "/applications/#{@application.id}"
    else      
      flash[:warning] = "Job Application Not Submited"
      render :new
    end

  end
end
