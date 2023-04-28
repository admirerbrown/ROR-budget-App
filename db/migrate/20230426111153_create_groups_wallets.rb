class CreateGroupsWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_wallets do |t|
      t.integer :wallet_id
      t.integer :group_id

      t.timestamps
    end
  end
end
