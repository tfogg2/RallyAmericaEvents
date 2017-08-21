class CreateJoinTableEventTeam < ActiveRecord::Migration[5.1]
  def change
    create_join_table :event, :teams do |t|
      t.index [:event_id, :team_id]
      t.index [:team_id, :event_id]
    end
  end
end
