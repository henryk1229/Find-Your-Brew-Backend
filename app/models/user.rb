class User < ApplicationRecord
  has_many :favorites
  has_many :breweries, through: :favorites
end
