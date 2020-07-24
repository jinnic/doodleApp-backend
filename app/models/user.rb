class User < ApplicationRecord
  has_many :doodles, dependent: :destroy
  has_many :likes
  # has_many :doodles, through :likes
end
