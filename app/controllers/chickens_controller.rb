class ChickensController < ApplicationController
  def index
    @chickens = Chicken.geocoded

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
  end
end
