class RenameExitReasons < ActiveRecord::Migration[5.1]
  def change
    rename_table :exit_reasons, :outcomes
    rename_table :client_exit_reasons, :client_outcomes
  end
end
