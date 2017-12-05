class RenameRiskLevels < ActiveRecord::Migration[5.1]
  def change
    rename_table :risk_levels, :risk_level_starts
  end
end
