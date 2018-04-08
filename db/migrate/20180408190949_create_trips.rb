class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :vehicle_id
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time
      t.float :distance
      t.integer :trip_status
      t.timestamps null: false
    end
  end
end
