class Artwork < ApplicationRecord
  mount_uploader :image, ImageUploader
    belongs_to :category
    belongs_to :user
    validates :title, presence: true
    validates :image, presence: true
    validates :price, presence: true
end
