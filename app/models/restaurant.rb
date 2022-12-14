class Restaurant < ApplicationRecord
  CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :category, :address, :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
