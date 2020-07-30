class LikeSerializer < ActiveModel::Serializer
  # belongs_to :doodle
  attributes :id, :doodle_id, :user_id
end
