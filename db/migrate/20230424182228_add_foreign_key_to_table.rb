class AddForeignKeyToTable < ActiveRecord::Migration[7.0]
  def change
  add_foreign_key :wallets, :users, column: :author_id
  add_index :wallets, :author_id
  create_join_table :wallets, :groups

  end
end
