class NewNumberField2 < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :duration, :decimal, precision: 5
  end
end
