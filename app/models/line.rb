class Line < ApplicationRecord
  belongs_to :doodle
  has_many :points

  accepts_nested_attributes_for :points
end
