class CreateFamilyTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :family_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
