class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :time
      t.string :description
      t.string :title
      t.string :location
      
      t.timestamps
    end
  end
end
