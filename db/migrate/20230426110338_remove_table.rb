class RemoveTable < ActiveRecord::Migration[7.0]
  def change
  drop_table :groups_wallets
  end
end
