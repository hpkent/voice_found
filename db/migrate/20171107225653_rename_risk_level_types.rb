class RenameRiskLevelTypes < ActiveRecord::Migration[5.1]
  def change
    rename_table :risk_level_types, :risk_levels
  end
end
