class PostsController < ApplicationController

  def index
    @posts = Post.all
    @categories = Category.all
    @applications = Application.all
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
    @categories = Category.all
  end



  def update
    
    @post = Post.find_by(id: params[:id])
    @categories = Category.all
    @post.assign_attributes(title: params[:title], description: params[:description], budget: params[:budget], deadline: params[:deadline], category_id: params[:category_id], skills: params[:skills])
    if @post.save
      flash[:success] = "Job Post Updated"
      redirect_to "/posts/#{@post.id}"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:warning] = "Job Post Deleted"
    redirect_to "/dashboards/employer"
  end

  def search
    search_query = params[:search_input]
    @posts = Post.where("title LIKE ? OR skills LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @posts.empty?
      flash[:info] = "No post found in search"
    end
    render :index
  end

end
