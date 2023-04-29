class AddIndexKeyToJoinTable < ActiveRecord::Migration[7.0]
  def change
  add_index :groups_wallets, :wallet_id
  add_index :groups_wallets, :group_id


  end
end
