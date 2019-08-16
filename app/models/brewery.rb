require 'rest-client'
require 'pry'

class Brewery < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites


  # def self.get_breweries
  #   arr = []
  #   i = 0
  #   page = 9
  #   while i < page do
  #     response = RestClient.get("https://api.openbrewerydb.org/breweries?by_state=new_york&page=#{i+1}&per_page=50")
  #     breweries_data = JSON.parse(response)
  #     arr.push(breweries_data)
  #     i +=1
  #   end
  #   arr.flatten
  # end

end
