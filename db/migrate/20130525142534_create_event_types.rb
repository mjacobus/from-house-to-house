class CreateEventTypes < ActiveRecord::Migration
  def change
    create_table :event_types do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :event_types, :name, :unique => true
    add_index :event_types, :slug, :unique => true
  end
end
