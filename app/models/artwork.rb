class Artwork < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates :image_url, presence: true
  validates :price, presence: true
end
