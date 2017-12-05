class CreateExitReasons < ActiveRecord::Migration[5.1]
  def change
    create_table :exit_reasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
