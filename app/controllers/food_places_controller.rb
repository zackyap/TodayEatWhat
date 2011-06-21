class FoodPlacesController < ApplicationController
  # before_filter :random_place

  def index

  end

  def show
    @random_place = FoodPlace.random
    @place = @random_place.place
    @disgust_text = @random_place.disgust_text
  end

private

end
