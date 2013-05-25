class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.references :type
      t.references :status
      t.text :goal
      t.text :notes

      t.timestamps
    end
    add_index :events, :type_id
    add_index :events, :status_id
  end
end
