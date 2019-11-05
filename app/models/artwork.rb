class Artwork < ApplicationRecord
  mount_uploader :artwork, ArtworkUploader
    belongs_to :category
    belongs_to :user
    validates :title, presence: true
    validates :image_url, presence: true
    validates :price, presence: true
end
