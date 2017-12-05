class CreateRiskLevelEnds < ActiveRecord::Migration[5.1]
  def change
    create_table :risk_level_ends do |t|
      t.string :name
      t.timestamps
    end
  end
end
