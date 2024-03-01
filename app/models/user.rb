class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_many :reservations

  validates :profile_text, :firstname, :lastname, presence: true
end
