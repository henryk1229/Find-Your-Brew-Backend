
class BreweriesController < ApplicationController

  def index
    @breweries = Brewery.get_breweries
    render json: @breweries
  end

  def show
    @brewery = Brewery.find(params[:id])
    render  json: @brewery
  end



  private

  def brewery_params
    params.permit(:name, :brewery_type, :street, :city, :state, :postal_code, :country, :longitude, :latitude, :phone, :website_url, :tag_list)
  end
end
