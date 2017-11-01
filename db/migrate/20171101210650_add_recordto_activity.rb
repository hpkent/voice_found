class AddRecordtoActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :record_id, :integer
    remove_column :records, :activity_id, :integer
  end
end
