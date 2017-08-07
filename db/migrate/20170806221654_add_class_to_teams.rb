class AddClassToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :class, :string
  end
end
