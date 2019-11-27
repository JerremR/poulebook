class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chicken

  validates :status, inclusion: { in: ['En attente', 'Confirmé', 'Refusé'] }
  validates :start_date, presence: { message: 'Must be a valid date' }
  validates :end_date, presence: { message: 'Must be a valid date' }
  validate :start_must_be_before_end

  private

  def start_must_be_before_end
    errors.add(:start_date, "must be before end time") unless
        start_date < end_date
  end
end
