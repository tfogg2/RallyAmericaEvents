class RemoveTimeFrame < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :time_frame
    add_column :events, :start_date, :string
    add_column :events, :end_date, :string
  end
end
