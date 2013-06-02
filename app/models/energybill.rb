class Energybill < ActiveRecord::Base
  attr_accessible :address_id, :q1ccf, :q1kwh, :q2ccf, :q2kwh, :q3ccf, :q3kwh, :q4ccf, :q4kwh
  belongs_to :address
end
