class ProviderIDtoTable < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :provider_id, :integer
  end
end
