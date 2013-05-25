class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :short

      t.timestamps
    end
    add_index :cities, :name, :unique => true
    add_index :cities, :short, :unique => true
  end
end
