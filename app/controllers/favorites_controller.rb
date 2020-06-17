class FavoritesController < ApplicationController

  def show

  end

  def edit
  end

  def update
  end

  def new
  @favorite = Favorite.new
  end

  def destroy
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to favorites_url, notice: 'Favorite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def favorite_params
    params.require(:favorite).permit(:user_id, :product_id)
  end
end

