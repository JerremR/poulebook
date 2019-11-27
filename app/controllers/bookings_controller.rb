class BookingsController < ApplicationController
  before_action :authenticate_user!
  def index
    @bookings = Booking.order(id: :desc).where(user: current_user)
  end

  def new
    @booking = Booking.new
    @chicken = Chicken.find(params[:chicken_id])
    @booking.chicken = @chicken
    @booking.user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @chicken = Chicken.find(params[:chicken_id])
    @booking.chicken = @chicken
    @booking.user = current_user
    @booking.total_price = calculate_total_price(@chicken.price, @booking.start_date, @booking.end_date)
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def calculate_total_price(day_price, start_date, end_date)
    total_price = day_price * (end_date - start_date)
    total_price.round(2)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
