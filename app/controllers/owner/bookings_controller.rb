module Owner
  class BookingsController < ApplicationController
    before_action :authenticate_user!
    def index
      @bookings = current_user.owner_bookings
    end
  end
end
