class FoodPlacesController < ApplicationController
  # before_filter :all_places

  def index
    # @food_place = FoodPlace.find(:id => rand(FoodPlace.find(:all).count))
    # @place = @food_places[rand(@food_places.count)]
        @place = FoodPlace.first
  end

  def show
    # @place = FoodPlace.find(:first, :offset => rand(FoodPlace.count :all))
    @place = FoodPlace.random.place
    @disgust_text = FoodPlace.random.disgust_text
  end

# private
#   def all_places
#     @all_places = FoodPlace.find(:all)
#   end
end
