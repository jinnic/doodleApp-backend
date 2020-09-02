class User < ApplicationRecord
  has_secure_password

  has_many :doodles, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :user_name, uniqueness: { case_sensitive: true }
  validates :user_name, presence: true
end
