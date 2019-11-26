class BookingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @bookings = Booking.where(user: current_user)
  end
end
