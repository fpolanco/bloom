class ProductsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
    @users = User.all
  end

  private 
  

  def authenticate_user
    if session[:current_user] == nil 
      redirect_to new_sessions_path, notice: "Please login to continue"
    end
  end

end

#button to favorite