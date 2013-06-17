class AddPublisherAndPartnerIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :publisher_id, :integer
    add_column :events, :partner_id, :integer
  end
end
