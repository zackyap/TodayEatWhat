class FoodPlacesController < ApplicationController
  # before_filter :all_places

  def index
    # @food_place = FoodPlace.find(:id => rand(FoodPlace.find(:all).count))
    # @place = @food_places[rand(@food_places.count)]
        @place = FoodPlace.first
  end

  def show
    # @place = FoodPlace.find(:first, :offset => rand(FoodPlace.count :all))
    @random_place = FoodPlace.random
    @place = @random_place.place
    @disgust_text = @random_place.disgust_text
  end

# private
#   def all_places
#     @all_places = FoodPlace.find(:all)
#   end
end
