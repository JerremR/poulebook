class ChickensController < ApplicationController
  def index
    #Added the following for the search bar
    if params[:query].present?
      sql_query = "species ILIKE :query OR address ILIKE :query"
      @chickens = Chicken.where(sql_query, query: "%#{params[:query]}%")
    else
      @chickens = Chicken.all
    end

    @geocoded_chickens = Chicken.geocoded

    @markers = @geocoded_chickens.map do |chicken|
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
