class DashboardsController < ApplicationController
  def freelancer
    @posts = Post.all
    @profile = current_user.profile
    render 'freelancer.html.erb' 
  end
  def employer
    @posts = current_user.posts
    @posts.each do |post|
      @applications = post.applications
      
    end
    render 'employer.html.erb' 
  end
end
