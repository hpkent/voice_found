class AddFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :activities, :duration, :float
  end
end
