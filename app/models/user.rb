class User < ApplicationRecord
  has_many: Favorites,
  has_many: Breweries, through: Favorites
end
