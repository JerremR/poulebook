class ChickensController < ApplicationController
  def index
    @chickens = Chicken.all
  end

  def create
  end

  def new
  end

  def show
  end
end
