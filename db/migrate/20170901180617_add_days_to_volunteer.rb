class AddDaysToVolunteer < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteers, :available_dates, :datetime
  end
end
