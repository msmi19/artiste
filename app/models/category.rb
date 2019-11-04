class Category < ApplicationRecord
  has_many :artworks
  validates :category_name, uniqueness: true
end
