class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :name, :brewery_type, :street, :city, :state, :postal_code,
            :country, :longitude, :latitude, :phone, :website_url, :tag_list

  has_many :favorites
  # def favorite_ids
  #   object.favorites.pluck(:id)
  # end
end
