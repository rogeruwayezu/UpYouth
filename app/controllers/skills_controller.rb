class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new

  end

  def create
    @skill = Skill.new({name: params[:name]})
    
    if @skill.save
      flash[:success] = "Succesfully Saved"
      redirect_to "/skills"
    else
      flash[:warning] = "Ooops! Your skill isn't created"
      redirect_to "skills/new"
    end
  end

  def show
    @skill = Skill.find_by(id: params[:skill_id])
  end

  def edit
    @skill = Skill.find_by(id: params[:id])
  end

  def update
    @skill = Skill.find_by(id: params[:id])

    @skill.assign_attributes(name: params[:name])
    

    if @skill.save
      flash[:success] = "Your skill is updated"
      redirect_to "/skills"
    else
      render :back
    end
  end

  private

  def set_skill
    @skill = Skill.find(params[:id])
  end

  def skill_params
    params.require(:skill).permit(:name)
  end

end
