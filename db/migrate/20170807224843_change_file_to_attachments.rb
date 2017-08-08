class ChangeFileToAttachments < ActiveRecord::Migration[5.1]
  def change
    drop_table :supplementals
  end
end
