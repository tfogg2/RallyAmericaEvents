class AddSupplementals < ActiveRecord::Migration[5.1]
  def change
    create_table :supplementals do |t|
      t.attachment :attachment
      

      t.timestamps
    end
  end
end
