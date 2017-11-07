class ChangeRecordColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :records, :stage_type_id, :integer
  end
end
