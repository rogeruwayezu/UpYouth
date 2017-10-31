class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def show
  end

  def edit
  end


  def create
    @skill = Skill.new(skill_params)
    
    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'skill was successfully created.' }
        format.json { render :show, status: :created, location: @skill }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  

  
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: 'skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
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
