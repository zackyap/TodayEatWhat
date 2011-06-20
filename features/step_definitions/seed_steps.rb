Given /^there is a food place:$/ do |table|
  # Factory(:food_place, :place => place, :disgust_text => disgust_text)
  # FoodPlace.create(:place => place, :disgust_text => disgust_text)
  table.hashes.each do |attributes|
    FoodPlace.create!(attributes)
  end
end
