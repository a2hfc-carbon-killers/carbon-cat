class CreateEnergybills < ActiveRecord::Migration
  def change
    create_table :energybills do |t|
      t.integer :q1kwh
      t.integer :q2kwh
      t.integer :q3kwh
      t.integer :q4kwh
      t.integer :q1ccf
      t.integer :q2ccf
      t.integer :q3ccf
      t.integer :q4ccf
      t.integer :address_id

      t.timestamps
    end
  end
end
