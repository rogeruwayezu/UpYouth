class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.all
    @posts = Post.all
  end

  def new
    @post = Post.find_by(id: params[:post_id])

  end

  def create
    @submission = Submission.new({user_id: params[:user_id], file: params[:file], title: params[:title], description: params[:description], post_id: params[:post_id]})
    
    if @submission.save
      flash[:success] = "Your work is successfuly submitted to the employer"
      redirect_to "/dashboards/freelancer"
    else
      flash[:warning] = "Ooops! Your work isn't submitted"
      redirect_to "submissions/new"
    end
  end

  def show
  end

  def update
  end

  def edit
  end
end
