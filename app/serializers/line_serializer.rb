class LineSerializer < ActiveModel::Serializer
  attributes :brushColor, :brushRadius, :points
  # has_many :points
end
