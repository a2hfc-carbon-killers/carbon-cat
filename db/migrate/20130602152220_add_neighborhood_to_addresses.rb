class AddNeighborhoodToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :neighborhood, :string
  end
end
