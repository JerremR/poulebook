class ChickensController < ApplicationController
  def index
    @chickens = Chicken.all
  end

  def show
    @chicken = Chicken.find(params[:id])
  end

  def create
  end

  def new
  end
end
