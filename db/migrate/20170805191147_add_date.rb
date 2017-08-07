class AddDate < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :start_date, :timestamp
    add_column :events, :end_date, :timestamp
  end
end
