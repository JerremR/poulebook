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

    end
  end
end
