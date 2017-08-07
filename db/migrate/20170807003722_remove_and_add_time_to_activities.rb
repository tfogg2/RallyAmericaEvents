class RemoveAndAddTimeToActivities < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :time
    add_column :activities, :time, :timestamp
  end
end
