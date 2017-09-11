class OtherExperiencesController < ApplicationController
  def show
    @other_experience = OtherExperience.find_by(id: params[:id])
  end

  def new
    @other_experience = OtherExperience.new
    @categories = Category.all     
  end

  def create
    @other_experience = OtherExperience.new({user_id: params[:user_id], title: params[:title], description: params[:description]})
    if @other_experience.save
      flash[:success] = "Job other_experience Created"
      redirect_to "/other_experiences/#{@other_experience.id}"
    else      
      flash[:warning] = "Job other_experience NOT Created"
      render :new
    end

  end

  def edit
    @other_experience = OtherExperience.find_by(id: params[:id])
  end

  def update
    other_experience = OtherExperience.find_by(id: params[:id])
    OtherExperience.title = params[:title]
    OtherExperience.description = params[:description]
    OtherExperience.user_id = params[:user_id]
    other_experience.save
    flash[:success] = "Job other_experience Updated"
    redirect_to "/other_experiences/#{other_experience.id}"
  end
end
