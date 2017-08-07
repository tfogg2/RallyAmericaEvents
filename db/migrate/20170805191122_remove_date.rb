class RemoveDate < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :start_date
    remove_column :events, :end_date
  end
end
