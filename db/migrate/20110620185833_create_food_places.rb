class CreateFoodPlaces < ActiveRecord::Migration
  def self.up
    create_table :food_places do |t|
      t.string :place
      t.text :disgust_text

      t.timestamps
    end
  end

  def self.down
    drop_table :food_places
  end
end
