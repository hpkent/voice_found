class CreateCases < ActiveRecord::Migration[5.1]
  def change
    create_table :cases do |t|
      t.date :start_date
      t.date :end_date
      t.integer :client_id
      t.integer :manager_id
      t.text :notes
      t.text :steps_taken
      t.integer :risk_level_start
      t.integer :risk_level_end
      t.boolean :closed

      t.timestamps
    end
  end
end
