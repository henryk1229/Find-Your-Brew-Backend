class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites

  end

  def create
    @favorite = Favorite.new(user_id: params[:user_id], brewery_id: params[:brewery_id])
    
    if @favorite.save
      render json: @favorite
    end

  end

  def favorite_params
    params.permit(:note, :user_id, :brewery_id, :favorite)
  end

end
