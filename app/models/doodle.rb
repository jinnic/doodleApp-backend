class Doodle < ApplicationRecord

  belongs_to :user
  has_many :likes, dependent: :destroy

  class << self
    def per_page
      6
    end

    def pages(per_page = self.per_page)
      pages = count / per_page.to_f
      pages += 1 if pages % 1 > 0
      pages.to_i
    end

    def paginate(page: 1, per_page: self.per_page)
      page = page.to_i
      per_page = per_page.to_i

      offset = (page - 1) * per_page
      limit(per_page).offset(offset)
    end

  end

  # validates :doodle_data, presence: true
  # validates :name, length: { in: 0..30 }
end
