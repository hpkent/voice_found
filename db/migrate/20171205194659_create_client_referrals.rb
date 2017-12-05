class CreateClientReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :client_referrals do |t|
      t.integer :client_id
      t.integer :referral_id

      t.timestamps
    end
  end
end
