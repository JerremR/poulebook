module Owner
  class ChickensController < ApplicationController
    def index
      @chickens = current_user.chickens
    end
  end
end
