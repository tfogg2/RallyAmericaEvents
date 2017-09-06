class RemoveAvailableDates < ActiveRecord::Migration[5.1]
  def change
    remove_column :volunteers, :available_dates
    add_column :volunteers, :start_date, :datetime
    add_column :volunteers, :end_date, :datetime
  end
end
