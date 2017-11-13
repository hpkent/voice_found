class AddNotestoActivityType < ActiveRecord::Migration[5.1]
  def change
    add_column :activity_types, :notes, :string
  end
end
