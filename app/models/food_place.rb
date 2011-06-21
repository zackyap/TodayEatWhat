class FoodPlace < ActiveRecord::Base
	# attr_accessor :place, :disgust_text

  def self.random

    self.find(:first, :offset => rand(self.all.size))

  end
end
