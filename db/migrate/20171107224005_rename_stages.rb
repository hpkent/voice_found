class RenameStages < ActiveRecord::Migration[5.1]
  def change
    rename_table :stages, :stage_types
  end
end
