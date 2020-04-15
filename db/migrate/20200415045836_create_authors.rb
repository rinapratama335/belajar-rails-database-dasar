class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name, limit: 50
      t.text :address
      t.integer :age
    end
  end
end
