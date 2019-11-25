class Chicken < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings

  validates :name, presence: true
  validates :price, presence: true
end
