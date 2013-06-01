class Address < ActiveRecord::Base
  attr_accessible :administrative_area_level_1, :administrative_area_level_2, :country, :floor_area, :formatted_address, :heat, :latitude, :locality, :longitude, :occupancy, :postal_code, :route, :street_number, :wood_stove, :year_built
end
