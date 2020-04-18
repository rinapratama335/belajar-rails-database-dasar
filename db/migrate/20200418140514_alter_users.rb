class AlterUsers < ActiveRecord::Migration[6.0]
  def up
    rename_column :users, :password_degest, :password_digest
  end

  def down
    rename_column :users, :password_digest, :password_degest
  end
end
