class ApplicationsController < ApplicationController

  def index
    @applications = Application.all
    @posts = Post.all
  end

  def show
    @application = Application.find_by(id: params[:id])
  end

  def new
    @application = Application.new
    @posts = Post.all
    @post = Post.find_by(id: params[:post_id])
  end

  def create
    @application = Application.new ({
      
      user_id: params[:user_id],
      duration: params[:duration],
      cv: params[:cv],
      cover_letter: params[:cover_letter],
      post_id: params[:post_id]})
  end
end
