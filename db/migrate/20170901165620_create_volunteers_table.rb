class CreateVolunteersTable < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :phone_number
      t.datetime :birthday
      t.string :shirt_size
      t.string :previous_position
      t.string :previous_rallys
      t.string :position
      t.string :qualifications
      t.string :medical
      t.integer :sfi_number
      t.string :sweep_equipment
      t.boolean :first_time_voluntter, default: false
      t.boolean :ham_operator, default: false
      t.string :ham_number
      t.string :radio_equipment
      t.string :friends
    end
  end
end
