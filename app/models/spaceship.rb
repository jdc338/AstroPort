class Spaceship < ApplicationRecord
  belongs_to :user
  # has_many :reviews, dependent: :destroy

  validates :name, :description, :capacity, :price, :speed, presence: true
  validates :capacity, :price, :speed, numericality: true
end
