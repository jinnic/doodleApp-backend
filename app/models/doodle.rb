class Doodle < ApplicationRecord
  
  belongs_to :user
  has_many :likes
  has_many :lines

  accepts_nested_attributes_for :lines
end
