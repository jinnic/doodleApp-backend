class LineSerializer < ActiveModel::Serializer
  attributes :brushColor, :brushRadius
  has_many :points
end