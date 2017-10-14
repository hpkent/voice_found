class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.time :start_date
      t.time :end_date
      t.integer :duration
      t.integer :activity_type_id
      t.integer :client_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
