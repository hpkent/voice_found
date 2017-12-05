class AddColumnstoClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :start_date, :date
    add_column :clients, :impact_notes, :text
    add_column :clients, :notes, :text
    add_column :clients, :exit_reason, :text
    add_column :clients, :participation_type_id, :integer
    add_column :clients, :change_type_id, :integer
  end
end
