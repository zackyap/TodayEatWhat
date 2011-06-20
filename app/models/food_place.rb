class FoodPlace < ActiveRecord::Base
  def self.random

    self.find(:first, :offset => rand(self.all.size-1))

  end
end
