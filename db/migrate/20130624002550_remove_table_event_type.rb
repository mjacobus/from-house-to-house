class RemoveTableEventType < ActiveRecord::Migration
  def up
    drop_table :event_types
    remove_column :events, :type_id
    add_column :events, :event_type, :string
    add_index :events, :event_type
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
