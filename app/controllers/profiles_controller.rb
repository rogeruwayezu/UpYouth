class ProfilesController < ApplicationController
  def new
    @skills = Skill.all
    @profile = Profile.new
  end

  def show
    @profile = current_user.profile
    @portfolios = current_user.portfolios
    @educations = current_user.educations
    @employment_histories = current_user.employment_histories
    @skills = current_user.profile.skills
    @categories = current_user.profile.categories
  
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    @profile = Profile.find_by(id:params[:id])
  end



  def update
    @profile = Profile.find_by(id:params[:id])
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:overview, :user_id, :profile_picture, skill_ids:[], category_ids:[])
  end



end
