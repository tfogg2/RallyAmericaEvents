class ChangeSpelling < ActiveRecord::Migration[5.1]
  def change
    remove_column :volunteers, :first_time_voluntter
    add_column :volunteers, :first_time_volunteer, :boolean, default: false
  end
end
