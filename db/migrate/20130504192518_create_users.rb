class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.boolean :admin, default: false

      t.timestamps
    end
    add_index :users, :name, :unique => true
    add_index :users, :email, :unique => true
  end
end
