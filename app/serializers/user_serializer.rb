class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :profile, :password

  has_many :breweries
end
