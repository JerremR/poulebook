class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home, raise: false

  def home
    @top_chickens = Chicken.limit(4)
  end
end
