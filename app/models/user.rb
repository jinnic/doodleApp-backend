class User < ApplicationRecord
  has_secure_password
  has_many :doodles
  has_many :likes
end
