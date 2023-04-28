class RenameAuthoridColumnInWallets < ActiveRecord::Migration[7.0]
  def change
  rename_column :wallets, :authot_id, :author_id
  end
end
