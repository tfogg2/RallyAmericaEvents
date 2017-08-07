class ChangeClasstoClassName < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :class
    add_column :teams, :car_class, :string
  end
end
