class Picture < ApplicationRecord
    def self.search(search)
        title_search = where("title ILIKE ?", "%#{search}%") 
        desc_search = where("description ILIKE ?", "%" + "#{search}" + "%")
        title_search.or(desc_search)
      end
    has_many :picture_tags, dependent: :destroy
    has_many :tags, through: :picture_tags
    # has_one :picture_tags
    validates :title, presence: true
end