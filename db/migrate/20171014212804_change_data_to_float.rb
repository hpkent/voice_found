class ChangeDataToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :duration, :number_field
  end
end
