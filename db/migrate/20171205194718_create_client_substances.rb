class CreateClientSubstances < ActiveRecord::Migration[5.1]
  def change
    create_table :client_substances do |t|
      t.integer :client_id
      t.integer :substance_id

      t.timestamps
    end
  end
end
