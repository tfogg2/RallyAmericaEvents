class CreateSupplementals < ActiveRecord::Migration[5.1]
  def change
    create_table :supplementals do |t|
      t.attachment :file
      
      t.timestamps
    end
  end
end
