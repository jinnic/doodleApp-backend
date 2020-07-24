class Doodle < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :lines, dependent: :destroy
end
