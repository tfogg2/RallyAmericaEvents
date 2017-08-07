class AddEventId < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :event_id, :string
    add_column :supplementals, :event_id, :string
  end
end
