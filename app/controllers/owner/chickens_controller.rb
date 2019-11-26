module Owner
  class ChickensController < ApplicationController
    def index
      @chickens = current_user.chickens
    end

    def new
      @chicken = Chicken.new
      @chicken.owner = current_user
    end

    def create
      @chicken = Chicken.new(chicken_params)
      if @chicken.save
        redirect_to owner_chicken_path
      else
        render :new
      end
    end

    private

    def chicken_params
      params.require(:chicken).permit(:name, :color, :species, :gender, :price, :birthdate, :photo, :presentation, :address, :owner)
    end
  end
end
