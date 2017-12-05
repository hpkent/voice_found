class CreateClientTargetGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :client_target_groups do |t|
      t.integer :client_id
      t.integer :target_group_id

      t.timestamps
    end
  end
end
