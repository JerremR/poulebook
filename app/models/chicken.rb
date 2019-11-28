class Chicken < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings

  validates :name, presence: true
  validates :price, presence: true
  validates :gender, inclusion: { in: ['Mâle', 'Femelle'] }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader
end
