class DashboardsController < ApplicationController
  def freelancer

    if params[:skill]
     @posts =  Skill.find_by(name: params[:skill]).posts

    else
      @posts = Post.all
    end

    @profile = current_user.profile
    @post_skills = []
    @user_skills =   current_user.profile.skills
    @user_skills.each do |user_skill|
    @posts.each do |post|
      post.skills.each do |skill|
        if skill.name == user_skill.name
          @post_skills << skill.name

        end
      end
    end
  end

  end
  def employer
    @posts = Post.all
    @post = Post.find_by(id: params[:id])
    @posts = current_user.posts
    @posts.each do |post|
      @applications = post.applications 
      @submissions = post.submissions   
    end

    render 'employer.html.erb' 
  end
end
