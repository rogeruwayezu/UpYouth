class ProfilesController < ApplicationController
  def new
  end

  def show
    @profile = current_user.profile
    @portfolios = current_user.portfolios
    @employment_history = current_user.employment_history
  
  end

  def create
    @profile = Profile.create({overview: params[:overview], certifications: params[:certifications], user_id: params[:user_id]})
    redirect_to "/profiles/#{@profile.id}"
  end

end
