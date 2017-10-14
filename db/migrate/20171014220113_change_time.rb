class ChangeTime < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :start_date, :datetime
    change_column :activities, :end_date, :datetime
  end
end
