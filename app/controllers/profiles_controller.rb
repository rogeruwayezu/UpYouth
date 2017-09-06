class ProfilesController < ApplicationController
  def new
  end

  def show
    @profile = current_user.profile
  end

  def create
    @profile = Profile.create({overview: params[:overview], portfolio: params[:portfolio], employment_history: params[:employment_history], education: params[:education], certifications: params[:certifications], user_id: params[:user_id]})
    redirect_to "/profiles/#{@profile.id}"
  end
  def overview_edit
    
  end
  def portfolio_edit
    
  end
  def employment_history_edit
    
  end
  def education_edit
    
  end
  def certifications_edit
    
  end
end
