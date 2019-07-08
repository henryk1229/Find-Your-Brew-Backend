class API::V1::FavoritesController < ApplicationController

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.brewery = Brewery.first

    if @favorite.save
      render json: @favorite
    end

  end

  def favorite_params
    params.permit(:note, :user_id, :brewery_id)
  end

end
