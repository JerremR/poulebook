class ChickensController < ApplicationController
  def index
    #Added the following for the search bar
    if params[:query].present?
      sql_query = "species ILIKE :query OR address ILIKE :query"
      @chickens = Chicken.geocoded.where(sql_query, query: "%#{params[:query]}%")
    else
      @chickens = Chicken.geocoded
    end

    @markers = @chickens.map do |chicken|
      {
        lat: chicken.latitude,
        lng: chicken.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { chicken: chicken }),
        image_url: helpers.asset_url('logo.png')
      }
    end
  end

  def show
    @chicken = Chicken.find(params[:id])
    @booking = Booking.new
    # @booking.chicken = @chicken
    # @booking.user = current_user
  end
end
