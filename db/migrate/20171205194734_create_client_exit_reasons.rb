class CreateClientExitReasons < ActiveRecord::Migration[5.1]
  def change
    create_table :client_exit_reasons do |t|
      t.integer :client_id
      t.integer :exit_reason_id

      t.timestamps
    end
  end
end
