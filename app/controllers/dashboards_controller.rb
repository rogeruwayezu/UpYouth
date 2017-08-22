class DashboardsController < ApplicationController
  def freelancer
    @posts = Post.all
    render 'freelancer.html.erb' 
  end
  def employer
    @posts = current_user
    kkkkk
    render 'employer.html.erb' 
  end
end
