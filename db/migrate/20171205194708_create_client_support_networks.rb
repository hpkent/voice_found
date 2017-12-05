class CreateClientSupportNetworks < ActiveRecord::Migration[5.1]
  def change
    create_table :client_support_networks do |t|
      t.integer :client_id
      t.integer :support_network_id

      t.timestamps
    end
  end
end
