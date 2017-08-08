class AddEventIdToSupplemental < ActiveRecord::Migration[5.1]
  def change
    add_column :supplementals, :event_id, :string
  end
end
