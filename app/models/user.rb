class User < ApplicationRecord
  has_many :doodles
  has_many :likes
  has_many :doodles, through :likes
end
