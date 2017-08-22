class DashboardsController < ApplicationController
  def freelancer
    @posts = Post.all
    render 'freelancer.html.erb' 
  end
  def employer
    @posts = current_user.posts
    render 'employer.html.erb' 
  end
end
