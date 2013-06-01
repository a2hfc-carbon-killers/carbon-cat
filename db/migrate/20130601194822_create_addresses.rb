class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :formatted_address
      t.float :latitude
      t.float :longitude
      t.string :street_number
      t.string :route
      t.string :locality
      t.string :administrative_area_level_2
      t.string :administrative_area_level_1
      t.string :country
      t.string :postal_code
      t.integer :floor_area
      t.integer :year_built
      t.integer :occupancy
      t.string :heat
      t.boolean :wood_stove

      t.timestamps
    end
  end
end
