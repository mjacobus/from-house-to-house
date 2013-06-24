class DropTableStatuses < ActiveRecord::Migration
  def up
    drop_table :event_statuses
    remove_column :events, :status_id
    add_column :events, :status, :string
    add_index :events, :status
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
