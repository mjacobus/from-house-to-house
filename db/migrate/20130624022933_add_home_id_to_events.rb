class AddHomeIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :home_id, :integer
  end
end
