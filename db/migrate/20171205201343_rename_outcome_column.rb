class RenameOutcomeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :client_outcomes, :exit_reason_id, :outcome_id
  end
end
