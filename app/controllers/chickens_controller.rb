class ChickensController < ApplicationController
  def index
    @chickens = Chicken.geocoded

    @markers = @chickens.map do |chicken|
      {
        lat: chicken.latitude,
        lng: chicken.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { chicken: chicken })
      }
    end
  end

  def show
    @chicken = Chicken.find(params[:id])
  end
end
