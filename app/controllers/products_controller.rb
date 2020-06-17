class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
    @users = User.all
  end

end

#button to favorite