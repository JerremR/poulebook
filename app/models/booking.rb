class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chicken

  validates :status, inclusion: { in: ['pending', 'confirmed', 'rejected'] }
end
