class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :vehicle_number
      t.integer :company_id
      t.timestamps null: false
    end
  end
end
