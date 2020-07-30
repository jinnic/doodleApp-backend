class DoodleSerializer < ActiveModel::Serializer
  attributes :id, :name, :width, :height, :user_id, :doodle_data, :username

  belongs_to :user 
  has_many :likes

  def username
    self.object.user.user_name
  end
end
