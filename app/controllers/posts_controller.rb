class PostsController < ApplicationController

  def index

    if params[:skill]
     @posts =  Skill.find_by(name: params[:skill]).posts

    else
      @posts = Post.all
    end

    @categories = Category.all
    @applications = Application.all
    @skills = Skill.all
  end

  def show
    @post = Post.find_by(id: params[:id])
    @post_categories = @post.categories
    @post_skills = @post.skills
  end

  def new
    @post = Post.new
    @categories = Category.all  
    @skills = Skill.all   
  end

  def create
    @categories = Category.all
    @post = Post.new(post_params)

    if @post.save
      flash[:success] = "Job Post Created"
      redirect_to "/posts/#{@post.id}"
    else      
      flash[:warning] = "Job Post NOT Created"
      render :new
    end

  end

  def edit
    @categories = Category.all
  end



  def update

    @categories = Category.all
    if @post.update(post_params)
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
    @posts = Post.where("title LIKE ?  OR description LIKE ?", "%#{search_query}%", "%#{search_query}%")
    if @posts.empty?
      flash[:info] = "No result found....."
    end
    render :index
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :user_id, :description, :budget, :deadline, :category_id, skill_ids:[], category_ids:[])
  end
end
