class NewNumberField < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :duration, :decimal
  end
end
