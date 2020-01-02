class DropUsernameFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :username, :string, null: false
    add_column :users, :username, :string, null: false, unique: true
  end
end
