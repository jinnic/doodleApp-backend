class Like < ApplicationRecord
  belongs_to :doodle, :user
end
