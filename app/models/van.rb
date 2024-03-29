class Van < ApplicationRecord
  belongs_to :user

  has_many :reservations, dependent: :destroy
  has_many_attached :photos

  validates :title, :description, :address, :model, :capacity, :mileage, :production_year, :fuel_type, :price_per_day, :car_brand, :photos, presence: true
  validates :description, length: { minimum: 50 }
  validates :capacity, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :mileage, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 500_000 }
end
