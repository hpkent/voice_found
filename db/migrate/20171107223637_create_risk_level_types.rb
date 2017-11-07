class CreateRiskLevelTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :risk_level_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
