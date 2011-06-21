class FoodPlacesController < ApplicationController
  before_filter :all_places

  def index

  end

  def show
    @place = @random_place.place
    @disgust_text = @random_place.disgust_text
  end

private
  def random_place
    @random_place = FoodPlace.random
  end
end
