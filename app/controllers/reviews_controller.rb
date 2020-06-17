class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :edit, :update, :destroy]

    def index
        @reviews = Review.all
    end
    
    def show
    end

    def edit
      @review = Review.find_by(id: params[:id])
    end

    def new
        @review = Review.new
    end

    def create
      product_id = request.referrer.split("/").last.to_i
      user_id = params[:user][:id].to_i
      content = params[:review][:content]
      rating = params[:review][:rating]
     
        @review = Review.new(
          product_id: product_id,
          user_id: user_id,
          content: content,
          rating: rating
        )
        respond_to do |format|
        
          if @review.valid?
            @review.save
            
            format.html { redirect_to product_path(product_id), notice: 'Review was successfully created.' }
            format.json { render :show, status: :created, location: @user }
          else
            format.html { redirect_to product_path(product_id) }
            format.json { render json: @review.errors, status: :unprocessable_entity }
          end
        end
    end

      def update
      
      end

      def destroy
        @review.destroy
        respond_to do |format|
          format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
          format.json { head :no_content }
        end
      end









    private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:content, :rating, :user_id, :product_id, :text)
    end
end

    






