class ChangeCasetoRecord < ActiveRecord::Migration[5.1]
  def change
    rename_table :cases, :records
  end
end
