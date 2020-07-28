class User < ApplicationRecord
  has_secure_password
  has_many :doodles, dependent: :destroy
  has_many :likes, dependent: :destroy
end
