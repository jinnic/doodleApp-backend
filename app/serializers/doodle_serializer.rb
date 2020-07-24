class DoodleSerializer < ActiveModel::Serializer
  has_many :lines
  attributes :id, :name, :width, :height, :user_id
end
