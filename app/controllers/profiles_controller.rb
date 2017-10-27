class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
    @skills = Skill.all
  end

  def show
    @profile = current_user.profile
    @portfolios = current_user.portfolios
    @employment_histories = current_user.employment_histories

  
  end

  def create
    @skills = Skill.all
    @profile = Profile.new(user_id: params[:user_id], overview: params[:overview], profile_picture: params[:profile_picture])

    if @profile.save
      
      redirect_to @profile
    else
      render :new
    end

  end

  def edit
    @profile = Profile.find_by(id: params[:id])
  end



  def update
    
    @profile = Profile.find_by(id: params[:id])
    @profile.assign_attributes(overview: params[:overview],user_id: params[:user_id],profile_picture: params[:profile_picture])
    if @profile.save
      flash[:success] = "Profile Updated"
      redirect_to "/profiles/#{@profile.id}"
    else
      render :edit
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(skill_ids:[])
  end



end
