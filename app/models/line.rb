class Line < ApplicationRecord
  belongs_to :doodle
  has_many :points
end
