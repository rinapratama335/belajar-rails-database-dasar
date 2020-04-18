class AddPasswordDegestToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_degest, :string
  end
end
