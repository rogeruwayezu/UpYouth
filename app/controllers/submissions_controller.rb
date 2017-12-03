class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.all
    @posts = Post.all
    @post = Post.find_by(id: params[:post_id])
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
    @submission = Submission.find_by(id: params[:submission_id])
  end

  def edit
    @submission = Submission.find_by(id: params[:id])
  end

  def update
    @submission = Submission.find_by(id: params[:id])

    @submission.assign_attributes(completed: true)
    

    if @submission.save
      flash[:success] = "Your work is complete"
      redirect_to "/dashboards/employer"
    else
      render :back
    end
  end

  def freelancer_submissions
    @submissions = current_user.submissions
  end

  def work_completed
    @submissions = [].to_a
    current_user.submissions.each do |submission|
      if submission.completed == true
        @submissions << submission
      end
    end
  end
end
