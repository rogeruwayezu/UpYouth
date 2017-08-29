class PostsController < ApplicationController

  def index
    @posts = Post.all
    @categories = Category.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
    @categories = Category.all     
  end

  def create
    @post = Post.new({user_id: params[:user_id], title: params[:title], description: params[:description], budget: params[:budget], deadline: params[:deadline], skills: params[:skills], category_id: params[:category_id]})
    if @post.save
      flash[:success] = "Job Post Created"
      redirect_to "/posts/#{@post.id}"
    else      
      flash[:warning] = "Job Post NOT Created"
      render :new
    end

  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    post = Post.find_by(id: params[:id])
    post.title = params[:title]
    post.description = params[:description]
    post.budget = params[:budget]
    post.deadline = params[:deadline]
    post.category_id = params[:category_id]
    post.skills = params[:skills]
    post.save
    flash[:success] = "Job Post Updated"
    redirect_to "/posts/#{post.id}"
  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    flash[:warning] = "Job Post Deleted"
    redirect_to "/posts"
  end

  


end
