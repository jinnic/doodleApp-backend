class DoodleSerializer < ActiveModel::Serializer
  attributes :id, :name, :width, :height, :user_id, :lines
  has_many :lines
end
