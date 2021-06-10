class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
    add_index :authors, :name, unique: true
    add_index :authors, :email, unique: true
  end
end
