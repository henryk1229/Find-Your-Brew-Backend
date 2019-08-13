class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :favorites
  has_many :breweries, through: :favorites
end
