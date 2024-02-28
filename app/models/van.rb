class Van < ApplicationRecord
  belongs_to :user

  has_many_attached :photos

  validates :title, :description, :address, :model, :capacity, :mileage, :production_year, :fuel_type, :price_per_day, :car_brand, presence: true
  validates :description, length: { minimum: 150 }
  validates :capacity, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :mileage, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 500_000 }
  validates :fuel_type, inclusion: { in: ["diesel", "gasoline", "electric", "lpg"], message: "%{ value } is not a valid fuel type" }
end
