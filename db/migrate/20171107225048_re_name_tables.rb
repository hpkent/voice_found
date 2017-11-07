class ReNameTables < ActiveRecord::Migration[5.1]
  def change
    rename_column :records, :stage_type_id, :stage_id
    rename_table :stage_types, :stages
  end
end
