class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :address
      t.string :phone
      t.string :number
      t.references :territory
      t.references :area

      t.timestamps
    end
    add_index :homes, :territory_id
    add_index :homes, :area_id
  end
end
