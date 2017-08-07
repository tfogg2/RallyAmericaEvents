class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :time_frame
      t.string :location

      t.timestamps
    end
  end
end
