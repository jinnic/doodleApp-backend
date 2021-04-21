class DoodleSerializer < ActiveModel::Serializer
  attributes :id, :name, :width, :height, :user_id, :doodle_data, :username, :likes

  # belongs_to :user 
  has_many :likes

  def username
    if self.object.user
      self.object.user.user_name 
    else 
      'admin'
    end
  end

  # def likes 
  #   if self.object.likes
  #     self.object.likes 
  #   else 
  #     []
  #   end 
  # end 

end
