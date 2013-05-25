class CreateEventStatuses < ActiveRecord::Migration
  def change
    create_table :event_statuses do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :event_statuses, :name, :unique => true
    add_index :event_statuses, :slug, :unique => true
  end
end
