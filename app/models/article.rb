class Article < ApplicationRecord
  belongs_to :category, optional: true
  
  validates :title, presence: true, length: { minimum: 3, maximum: 300 }
  validates :short_description, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :description, presence: true, length: { minimum: 10, maximum: 5000 }

  scope :created_at_desc, -> { order(created_at: :desc) }
end
