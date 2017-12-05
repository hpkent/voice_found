class UpdateRiskinRecords < ActiveRecord::Migration[5.1]
  def change
    remove_column :records, :risk_level_start
    remove_column :records, :risk_level_end
  end
end
