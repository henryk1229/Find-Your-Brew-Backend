require 'rest-client'
require 'pry'

class Brewery < ApplicationRecord
  has_many: :favorites
  has_many: :users, through: :favorites

  url = "https://api.openbrewerydb.org/breweries"

  def self.get_breweries
    response = RestClient.get(url)
    breweries_data = JSON.parse(response)
    breweries_data.each do |brewery|
    binding.pry
  end

end
