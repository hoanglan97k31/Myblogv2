class Article < ApplicationRecord
  has_and_belongs_to_many :categories
  
  validates :title, presence: true, length: { minimum: 3, maximum: 300 }
  validates :short_description, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :description, presence: true, length: { minimum: 10, maximum: 30000 }

  scope :created_at_desc, -> { order(created_at: :desc) }
  mount_uploader :image, ImageUploader
end
