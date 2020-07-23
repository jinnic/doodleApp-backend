class UserSerializer < ActiveModel::Serializer
    attributes :id, :user_name, :password_digest, :bio
    has_many :doodles
    has_many :likes
  end