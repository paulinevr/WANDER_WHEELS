class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_many :reservations

  validates :profile_text, :username, presence: true

  validates :firstname, presence: true
  validates :lastname, presence: true
end
