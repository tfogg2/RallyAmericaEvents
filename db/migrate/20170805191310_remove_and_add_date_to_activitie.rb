class RemoveAndAddDateToActivitie < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :date
    add_column :activities, :date, :timestamp
  end
end
