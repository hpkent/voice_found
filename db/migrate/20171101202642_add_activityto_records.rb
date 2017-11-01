class AddActivitytoRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :record_id, :integer
  end
end
