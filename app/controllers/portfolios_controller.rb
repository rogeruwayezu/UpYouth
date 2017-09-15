class PortfoliosController < ApplicationController
  def show
    @portfolio = Portfolio.find_by(id: params[:id])
  end

  def new
    @portfolio = Portfolio.new
    @categories = Category.all     
  end

  def create
    @portfolio = Portfolio.new({user_id: current_user.id, title: params[:title], overview: params[:overview], file: params[:file], category_id: params[:category_id]})
    if @portfolio.save
      flash[:success] = "Portfolio Created"
      redirect_to "/portfolios/#{@portfolio.id}"
    else      
      flash[:warning] = "Job Portfolio NOT Created"
      render :new
    end

  end

  def edit
    @portfolio = Portfolio.find_by(id: params[:id])
  end

  def update
    portfolio = Portfolio.find_by(id: params[:id])
    portfolio.title = params[:title]
    portfolio.overview = params[:overview]
    portfolio.user_id = params[:user_id]
    portfolio.file = params[:file]
    portfolio.category_id = params[:category_id]
    portfolio.save
    flash[:success] = "Job Portfolio Updated"
    redirect_to "/posrtfolio/#{post.id}"
  end

  def download
    send_file '@portfolio.file_url', :type=>"application/pdf", :x_sendfile=>true
  end
end
