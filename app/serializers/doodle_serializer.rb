class DoodleSerializer < ActiveModel::Serializer
  belongs_to :user 
  attributes :id, :name, :width, :height, :user_id, :doodle_data, :username

  def username
    self.object.user.user_name
  end
end
