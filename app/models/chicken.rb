class Chicken < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings

  validates :name, presence: true
  validates :price, presence: true
  validates :gender, inclusion: { in: ['male', 'female'] }

  mount_uploader :photo, PhotoUploader
end
