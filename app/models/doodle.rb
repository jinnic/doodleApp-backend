class Doodle < ApplicationRecord

  belongs_to :user
  has_many :likes, dependent: :destroy

  # validates :doodle_data, presence: true
  # validates :name, length: { in: 0..30 }
end
