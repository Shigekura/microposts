class Micropost < ApplicationRecord

  validates :content, presence: true, length: { maximum: 255 }
  belongs_to :user
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'

end
