class EmploymentHistoriesController < ApplicationController
  
  def index
    @employment_histories = EmploymentHistory.all
  end

  def show
    @employment_history = EmploymentHistory.find_by(id: params[:id])
  end

  def new
    @employment_history = EmploymentHistory.new
        
  end

  def create
    @employment_history = EmploymentHistory.new({user_id: params[:user_id], company: params[:company], location: params[:location], position: params[:position], role: params[:role], period: params[:period], responsibilities: params[:responsibilities]})
    if @employment_history.save
      flash[:success] = "Employment_history Created"
      redirect_to "/employment_histories/#{@employment_history.id}"
    else      
      flash[:warning] = "Employment History NOT Created"
      render :new
    end

  end

  def edit
    @employment_history = EmploymentHistory.find_by(id: params[:id])
  end

  def update
    employment_history = EmploymentHistory.find_by(id: params[:id])
    employment_history.company = params[:company]
    employment_history.location = params[:location]
    employment_history.position = params[:position]
    employment_history.role = params[:role]
    employment_history.responsibilities = params[:responsibilities]
    employment_history.period = params[:period]
    employment_history.save
    flash[:success] = "Job employment_history Updated"
    redirect_to "/posts/#{employment_history.id}"
  end
end
