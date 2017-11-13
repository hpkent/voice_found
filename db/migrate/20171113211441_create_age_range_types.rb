class CreateAgeRangeTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :age_range_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
