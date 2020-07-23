class Doodle < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :lines
  # has_many :users, through :likes
end
