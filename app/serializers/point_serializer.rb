class PointSerializer < ActiveModel::Serializer
  attributes :id, :line_id, :x, :y
end
