class CreateParticipationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :participation_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
