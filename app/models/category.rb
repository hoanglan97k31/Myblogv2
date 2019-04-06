class Category < ApplicationRecord
	has_many :articles
	
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }

  scope :created_at_desc, -> { order(created_at: :desc) }
end
