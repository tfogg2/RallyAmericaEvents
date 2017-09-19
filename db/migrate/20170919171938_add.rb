class Add < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteers, :user_id, :integer, index: true
  end
end
