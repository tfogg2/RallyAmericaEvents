class ChangeIntegerLimitToPhoneNumber < ActiveRecord::Migration[5.1]
  def change
    change_column :volunteers, :phone_number, :integer, limit: 8
  end
end
