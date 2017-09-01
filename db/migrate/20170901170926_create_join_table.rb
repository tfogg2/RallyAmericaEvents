class CreateJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :event, :volunteers do |t|
      t.index [:event_id, :volunteer_id]
      t.index [:volunteer_id, :event_id]
    end
  end
end
