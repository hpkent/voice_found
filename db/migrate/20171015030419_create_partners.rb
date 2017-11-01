class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :org_name
      t.string :phone_number

      t.timestamps
    end
  end
end
