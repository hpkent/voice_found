class AddColumnstoClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :age_range_type_id, :integer
    add_column :clients, :gender_type_id, :integer
    add_column :clients, :family_type_id, :integer
    add_column :clients, :relationship_type_id, :integer
    add_column :clients, :exit_attempt_type_id, :integer

  end
end
