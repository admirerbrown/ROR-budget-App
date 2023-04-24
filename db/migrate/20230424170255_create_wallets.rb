class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets do |t|
      t.integer :authot_id
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
