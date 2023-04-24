class AddForeignKeyToGroups < ActiveRecord::Migration[7.0]
  def change
  add_column :groups, :user_id, :integer
  add_foreign_key :groups, :users, column: :user_id
  add_index :groups, :user_id

  end
end
