class UpdateUsers < ActiveRecord::Migration[5.2]
  def change
    add_index :users, :username
    add_index :users, :password_digest
    add_index :users, :session_token
  end
end
