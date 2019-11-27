class BookingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
    @chicken = Chicken.find(params[:chicken_id])
    @booking.chicken = @chicken
    @booking.user = current_user
  end

  def create
  end
end
