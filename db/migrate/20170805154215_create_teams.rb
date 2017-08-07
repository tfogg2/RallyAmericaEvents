class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :car_number
      t.string :competitor_type
      t.string :car_type
      t.string :driver_name
      t.string :co_driver_name

      t.timestamps
    end
  end
end
