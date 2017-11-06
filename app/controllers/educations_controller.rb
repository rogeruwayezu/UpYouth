class EducationsController < ApplicationController
  def show
    @education = Education.find_by(id: params[:id])
  end

  def new
    @education = Education.new
    @categories = Category.all     
  end

  def create
    @education = Education.new({user_id: params[:user_id], school: params[:school], date_attended: params[:date_attended], degree: params[:degree]})
    if @education.save
      flash[:success] = "Job education Created"
      redirect_to "/educations/#{@education.id}"
    else      
      flash[:warning] = "Job education NOT Created"
      render :new
    end

  end

  def edit
    @education = education.find_by(id: params[:id])
  end

  def update
    education = education.find_by(id: params[:id])
    education.user_id = params[:user_id]
    education.school = params[:school]
    education.date_attended = params[:date_attended]
    education.degree = params[:degree]
    education.save
    flash[:success] = "Job education Updated"
    redirect_to "/educations/#{education.id}"
  end
end
