class ProfilesController < ApplicationController
  def new
  end

  def show
    @profile = current_user.profile
    @portfolios = current_user.portfolios
    @employment_histories = current_user.employment_histories
  
  end

  def create
    @profile = Profile.create({overview: params[:overview], user_id: params[:user_id]})
    redirect_to "/profiles/#{@profile.id}"
  end

  def edit
    @profile = Profile.find_by(id: params[:id])
  end



  def update
    
    @profile = Profile.find_by(id: params[:id])
    @profile.assign_attributes(overview: params[:overview],user_id: params[:user_id])
    if @profile.save
      flash[:success] = "Profile Updated"
      redirect_to "/profiles/#{@profile.id}"
    else
      render :edit
    end
  end


end
