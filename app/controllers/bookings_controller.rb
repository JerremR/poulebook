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
    if chicken_available?(@chicken, @booking.start_date, @booking.end_date)
      if @booking.save
        redirect_to bookings_path
      else
        render :new
      end
    else
      @booking.errors.add(:chicken, 'Non dispo à ces dates. Vérifie les réservations stp !')
      @booking.errors.add(:start_date, 'Pas dispo !')
      @booking.errors.add(:end_date, 'Pas dispo !')
      render :new
      flash[:alert] = "#{@chicken.name} n'est pas dispo pour ces dates!"
    end
  end

  private

  def chicken_available?(chicken, start_date, end_date)
    bookings = chicken.bookings.where("status = 'En attente' OR  status = 'Confirmé'")
    booking_days = []
    bookings.each do |book|
      book_days = (book.start_date..book.end_date).map(&:to_s)
      book_days.each do |day|
        booking_days << day
      end
    end
    uniq_booking_days = booking_days.uniq

    booking_request_days = []
    request_book_days = (start_date..end_date).map(&:to_s)
    request_book_days.each do |day|
      booking_request_days << day
    end

    (uniq_booking_days & booking_request_days).empty?
  end

  def calculate_total_price(day_price, start_date, end_date)
    total_price = day_price * (end_date - start_date)
    total_price.round(2)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
