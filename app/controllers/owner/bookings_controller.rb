module Owner
  class BookingsController < ApplicationController
    before_action :authenticate_user!
    def index
      @bookings = current_user.owner_bookings
      @bookings_pending = current_user.owner_bookings.order(id: :desc).where(status: 'En attente')
      @bookings_accepted = current_user.owner_bookings.order(id: :desc).where(status: 'Confirmé')
      @bookings_rejected = current_user.owner_bookings.order(id: :desc).where(status: 'Refusé')
    end

    def accept
      change_status_to('Confirmé')
      flash.notice = "<p class='alert alert-success'> <strong>Super !</strong> Votre réservation est bien confirmée.</p>"
    end

    def decline
      change_status_to('Refusé')
      flash.notice = "<p class='alert alert-success'>Votre réservation a bien été annulée.</p>"
    end

    private

    def change_status_to(string)
      @booking = Booking.find(params[:id])
      @booking.status = string
      @booking.save
      redirect_to owner_bookings_path
    end
  end
end
