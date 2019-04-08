class Category < ApplicationRecord
  has_many :articles
	
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }

  scope :title_asc, -> { order(title: :asc) }
end
