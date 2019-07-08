class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :note, :user_id, :brewery_id
end
