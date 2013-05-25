class CreateTerritories < ActiveRecord::Migration
  def change
    create_table :territories do |t|
      t.string :name
      t.references :city

      t.timestamps
    end
    add_index :territories, [:name, :city_id], :unique => true
    add_index :territories, :city_id
  end
end
