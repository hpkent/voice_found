class CreateExitAttemptTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :exit_attempt_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
